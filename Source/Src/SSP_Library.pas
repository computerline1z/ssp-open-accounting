unit SSP_Library;

interface
uses Windows,SysUtils;
  function SSP_RoundTo(input:Extended;decimal:Integer):Extended;
implementation

uses Math;
function SSP_RoundTo(input:Extended;decimal:Integer):Extended;
begin
  if input>=0 then
    Result:=SimpleRoundTo(input,decimal)
  else
    Result:=-SimpleRoundTo(-input,decimal)
end;
end.
 