unit GetComID;

interface


uses
  Windows, Messages, SysUtils, Classes, NB30;
type
 TNBLanaResources = (lrAlloc, lrFree);

type
 PMACAddress = ^TMACAddress;
 TMACAddress = array[0..5] of Byte;

var
  LanaList:array[0..8] of Smallint;

  function ResetLana(LanaNum, ReqSessions, ReqNames: Byte; LanaRes: TNBLanaResources): Byte;
  function GetLanaEnum(LanaEnum: PLanaEnum): Byte;
  function GetMACAddress(LanaNum: Byte; MACAddress: PMACAddress): Byte;
  procedure InitLana;
  procedure MyResetLana;
  function GetComputerID:String;

implementation


procedure MyResetLana;
var
  RetCode: Byte;
  LanaNum: Byte;
begin
  LanaNum := LanaList[0];
  RetCode := ResetLana(LanaNum, 0, 0, lrAlloc);
end;

function ResetLana(LanaNum, ReqSessions, ReqNames: Byte; LanaRes: TNBLanaResources): Byte;
var
  ResetNCB: PNCB;
begin
  New(ResetNCB);
  ZeroMemory(ResetNCB, SizeOf(TNCB));
  try
    with ResetNCB^ do
    begin
      ncb_lana_num := Char(LanaNum);        // Set Lana_Num
      ncb_lsn := Char(LanaRes);             // Allocation of new resources
      ncb_callname[0] := Char(ReqSessions); // Query of max sessions
      ncb_callname[1] := #0;                // Query of max NCBs (default)
      ncb_callname[2] := Char(ReqNames);    // Query of max names
      ncb_callname[3] := #0;                // Query of use NAME_NUMBER_1
      ncb_command  := Char(NCBRESET);
      NetBios(ResetNCB);
      Result := Byte(ncb_cmd_cplt);
    end;
  finally
    Dispose(ResetNCB);
  end;
end;

function GetLanaEnum(LanaEnum: PLanaEnum): Byte;
var
  LanaEnumNCB: PNCB;
begin
  New(LanaEnumNCB);
  ZeroMemory(LanaEnumNCB, SizeOf(TNCB));
  try
    with LanaEnumNCB^ do
    begin
      ncb_buffer := PChar(LanaEnum);
      ncb_length := SizeOf(TLanaEnum);
      ncb_command  := Char(NCBENUM);
      NetBios(LanaEnumNCB);
      Result := Byte(ncb_cmd_cplt);
    end;
  finally
    Dispose(LanaEnumNCB);
  end;
end;

procedure InitLana;
var
  LanaEnum: PLanaEnum;
  I: Integer;
begin
  New(LanaEnum);
  ZeroMemory(LanaEnum, SizeOf(TLanaEnum));
  try
    if GetLanaEnum(LanaEnum) = NRC_GOODRET then
    begin
        for I := 0 to Byte(LanaEnum.length) - 1 do
          LanaList[i]:=Byte(LanaEnum.lana[I]);
    end;
  finally
    Dispose(LanaEnum);
  end;
end;

function GetMACAddress(LanaNum: Byte; MACAddress: PMACAddress): Byte;
var
  AdapterStatus: PAdapterStatus;
  StatNCB: PNCB;
begin
  New(StatNCB);
  ZeroMemory(StatNCB, SizeOf(TNCB));
  StatNCB.ncb_length := SizeOf(TAdapterStatus) +  255 * SizeOf(TNameBuffer);
  GetMem(AdapterStatus, StatNCB.ncb_length);
  try
    with StatNCB^ do
    begin
      ZeroMemory(MACAddress, SizeOf(TMACAddress));
      ncb_buffer := PChar(AdapterStatus);
      ncb_callname := '*              ' + #0;
      ncb_lana_num := Char(LanaNum);
      ncb_command  := Char(NCBASTAT);
      NetBios(StatNCB);
      Result := Byte(ncb_cmd_cplt);
      if Result = NRC_GOODRET then
        MoveMemory(MACAddress, AdapterStatus, SizeOf(TMACAddress));
    end;
  finally
    FreeMem(AdapterStatus);
    Dispose(StatNCB);
  end;
end;

function GetComputerID:String;
var
  LanaNum: Byte;
  MACAddress: PMACAddress;
  RetCode: Byte;
begin
  InitLana;
  MyResetLana;

  Result:='';
  LanaNum := LanaList[0];
  New(MACAddress);
  try
    RetCode := GetMACAddress(LanaNum, MACAddress);
    if RetCode = NRC_GOODRET then
    begin
      Result := Format('%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x',
        [MACAddress[0], MACAddress[1], MACAddress[2],
         MACAddress[3], MACAddress[4], MACAddress[5]]);
    end;
  finally
    Dispose(MACAddress);
  end;
end;

end.
