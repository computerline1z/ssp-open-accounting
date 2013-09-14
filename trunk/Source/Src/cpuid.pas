unit cpuid;
interface
const
  ID_BIT = $200000; // EFLAGS ID bit
type
  TCPUID = array[1..4] of Longint;
  function IsCPUID_Available: Boolean;register;
  function GetCPUID: TCPUID; assembler; register;
  function GetID: string;

implementation
uses SysUtils;
function IsCPUID_Available: Boolean; register;
asm
PUSHFD             {direct access to flags no possible, only via stack}
POP     EAX        {flags to EAX}
MOV     EDX,EAX    {save current flags}
XOR     EAX,ID_BIT {not ID bit}
PUSH    EAX        {onto stack}
POPFD              {from stack to flags, with not ID bit}
PUSHFD             {back to stack}
POP     EAX        {get back to EAX}
XOR     EAX,EDX    {check if ID bit affected}
JZ      @exit      {no, CPUID not availavle}
MOV     AL,True    {Result=True}
@exit:
end;

function GetCPUID: TCPUID; assembler; register;
asm
PUSH    EBX       {Save affected register}
PUSH    EDI
MOV     EDI,EAX   {@Resukt}
MOV     EAX,1
DW      $A20F     {CPUID Command}
STOSD             {CPUID[1]}
MOV     EAX,EBX
STOSD             {CPUID[2]}
MOV     EAX,ECX
STOSD             {CPUID[3]}
MOV     EAX,EDX
STOSD             {CPUID[4]}
POP     EDI       {Restore registers}
POP     EBX
end;
function GetID: string;
//IntToPos ist notwendig, da in extrem seltenen Fällen negative CPU-ID's vorkommen
  function IntToPos(Value: Integer): integer; overload;
  begin
    if Value < 0 then
      Result := -Value
    else
      Result := Value;
  end;
  function IntToPos(Value: Int64): int64; overload;
  begin
    if Value < 0 then
      Result := -Value
    else
      Result := Value;
  end;

begin
  if IsCPUID_Available then
    result := IntToStr(IntToPos(GetCPUID[1])) + IntToStr(IntToPos(GetCPUID[2]))
      + IntToStr(IntToPos(GetCPUID[3])) + IntToStr(IntToPos(GetCPUID[4]))
  else

    result := '70000'; //Dummywert
end;
end.
