unit Functions;

interface
uses IBODataset, IB, SysUtils,Forms,DB,ExtCtrls,StdCtrls,Controls,
IBCustomDataSet,IdGlobal;
  procedure ShowMDIForm(FormClass: TFormClass; var Form);
  function ProcessErr(E: EDatabaseError; AName:String; flag:Smallint = 1):integer;
  procedure CatDoiChuoi(strInPut:WideString; Pos :integer);
  function DocSoThanhChu(Socandoc: string): Widestring;
  function DocSoThanhChu_Eng(Socandoc: string;MaNT : string): Widestring;

var
  StrOutput1,StrOutput2:WideString;

implementation

uses Classes, Dialogs, MainDataMdl, MainForm, ChgNumToStr, GlobalUnit;

procedure ShowMDIForm(FormClass: TFormClass; var Form);
begin
  MainFrm.PnlMain.Visible:=False;
  if not Assigned(TForm(Form)) then
  begin
    Application.CreateForm(FormClass, Form);
    TForm(Form).Show;
  end
  else
    if TForm(Form).WindowState = wsMinimized then
      TForm(Form).WindowState := wsMaximized
    else
      TForm(Form).BringToFront;
end;
{-----------------------------------------------------------------------------
  Procedure: getSQLCode
  Author:    annh
  Date:      07-May-2002
  Arguments:
  Result:    None
-----------------------------------------------------------------------------}
//Neu flag=1 nghia la ra ben ngoai moi xu ly Showmessage
function ProcessErr(E: EDatabaseError; AName:String; flag: smallint = 1):integer;
var
  SQLErrCode:integer;
begin
  strFKName:='';
  Result:=0;

  if E is EIBO_ISCError then
    SQLErrCode:=(E as EIBO_ISCError).SQLCODE
  else
    exit;
  Result := SQLErrCode;
  case SQLErrCode of
    -803://Bi trung khoa
    begin
      if flag =1 then
        ShowMessageUnicode(97,E.Message,0);
      exit;
    end;
    -530://Khoa ngoai khong hop le
    begin
      strFKName := copy(E.Message,79,5);
      exit;
    end;
    -836://User Exception
    begin
      strFKName := copy(E.Message,37,5);
      exit;
    end;
    -902://Disconnect; Dut ket noi, ket thuc chuong trinh
    begin
      if flag =1 then
        ShowMessageUnicode(14,e.Message,0);
      Application.Terminate;
      exit;
    end;

    -901://server shutdown suddenly, ket thuc chuong trinh
    begin
      if flag =1 then
        ShowMessageUnicode(98,e.Message,0);
      Application.Terminate;
      exit;
    end;
    -913://dealock
    begin
      if flag =1 then
        ShowMessageUnicode(99,e.Message,0);
      Application.Terminate;
      exit;
    end;
    else
      ShowMessageUnicode(201,e.Message,0);
  end;
end;
{* Doc so thanh chu
  Hoang An *}
function DocSoThanhChu(Socandoc: string): Widestring;
var
  str, rs:string;
begin
  str:=Copy(Socandoc,length(Socandoc)-2,3);
  rs := FChgNumToStr(SoCandoc);
  rs := rs +  ' đồng';
  if str='000' then
    rs := rs + ' chẵn';
  rs := rs +  '.';
  Result := UTF8Decode(rs);
end;

function DocSoThanhChu_Eng(Socandoc: string;MaNT : string): Widestring;
var
  str, rs:string;
  so_le, so_nguyen:string;
  fsocandoc : double;
begin

  if not MainDM.qryPCurrency.active then MainDM.qryPCurrency.Open;
  MainDM.qryPCurrency.Locate('CURRENCY_ID', Mant, [loCaseInsensitive, loPartialKey]);

  if pos('.',Socandoc) <> 0 then
    begin
    so_nguyen := Copy(Socandoc,0,pos('.',Socandoc)-1);
    so_le:=Copy(Socandoc,pos('.',Socandoc)+1,2);

    iF Length(so_le) = 1 then
      so_le := so_le + '0';
    iF Length(so_le) > 2 then
      so_le := copy(so_le,0,2);
    end
  else
    begin
    so_nguyen := socandoc;
    so_le :='';
  end;

  if (so_nguyen = '') or (so_nguyen ='0') then
        so_nguyen := 'No'
  else
        so_nguyen := FChgNumToStr_Eng(so_nguyen);//SoCandoc);

  //Dollar
  if MainDM.qryPCurrencyCurrency_id.value = 'USD' then
    begin

      so_nguyen := so_nguyen + ' ' + 'dollar';

      fsocandoc := strTofloat(Socandoc);
      if (fsocandoc > 1) or (fsocandoc < 1) then //So nhieu
        so_nguyen := so_nguyen +'s';

      if so_le <> '' then
      begin
        so_nguyen := so_nguyen + ' and ' + LowerCase(FChgNumToStr_eng(so_le)) + ' cent';

        fsocandoc := Strtofloat(so_le);
        if fsocandoc > 1 then //so nhieu
          so_nguyen := so_nguyen + 's';
      end;

      rs := so_nguyen +  '.';
    end
  else //Doc cac ngoai te khac
    begin
    so_nguyen := so_nguyen + ' ' + UTF8Encode(MainDM.qryPCurrencyCURRENCY_NAME.Value);
    rs := so_nguyen + '.';
  end;
  //Dollar
  Result := UTF8Decode(rs);
end;

procedure CatDoiChuoi(strInPut:widestring; Pos :integer);
var Temp :WideString;
begin
  if pos>=Length(StrInPut) then
  begin
    StrOutput1 := StrInPut;
    StrOutput2 := '';
    exit;
  end;
  Temp:=strInPut[Pos];
  while Temp <> ' ' do
   begin
      Pos:= Pos - 1;
      Temp:=strInPut[Pos];
   end;
  Temp :=copy(strInPut,1,Pos);
  strOutput1 := Temp;
  strOutput2:=copy(strInPut,Pos,Length(strInPut)-Pos+1);
end;

end.
