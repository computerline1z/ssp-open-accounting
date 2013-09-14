unit ContextCompareLib;

interface
uses SysUtils,Classes;
const Max_Set=27;
const Seperator_Set :array[1..Max_Set] of Char =
        ('!','@','#','$','%','^','&','*','(',')',
         '-','+','=','_','`','~','<',',','>','.',
         '?','/','|','\','"','''',' ');
  function IsSeperator(s:Char):boolean;

  function CompareTwoWords(wsDest,wsTarget:WideString):Double;
  function CompareTwoSentences(wsSource,wsTarget:WideString):Double;
  function AnalysText(ws:String):TStrings;
  function GetAnalogDegree(st1,st2:TStrings):double;overload;
  function GetAnalogDegree(st1,st2:string):double;overload;
  function Copy_(st:TStrings;index,count:integer):TStrings;
  function Pos_(tsub,tstring:TStrings;var analog_degree:double):integer;
  procedure SetFloor(value:double);
var Floor_degree:double;
implementation

uses StrUtils;
procedure SetFloor(value:double);
begin
  Floor_degree:=value;
end;
function Copy_(st:TStrings;index,count:integer):TStrings;
var st_temp:TStrings;
    i:integer;
begin
  st_temp:=TStringList.Create;
  if (index<(st.Count-1)) then
  begin
    i:=0;
    while (i<count)and(index<=(st.Count-1)) do
    begin
      st_temp.Add(st.Strings[index]);
      inc(index);
      inc(i);
    end
  end;
  result:=st_temp;
end;
function Pos_(tsub,tstring:TStrings;var analog_degree:double):integer;
var i,j,pos:integer;
    ok:boolean;
     pos_degree,max_degree,temp_degree:double;
begin
  if (tstring.Count<=0)or(tsub.Count<=0) then
  begin
    result:=-1;
  end
  else
  begin
    result:=-1;
    pos:=0;
    max_degree:=0;
    for i:=0 to (tstring.Count-tsub.Count) do
    begin
      pos_degree:=0;
      ok:=true;
      for j:=0 to tsub.Count-1 do
      if (tsub.Strings[j]<>tstring.Strings[i+j]) then
      begin
         ok:=false;
         break;
      end;
      if ok then
      begin
        result:=i;
        exit;
      end;
    end;
  end;
end;
//===============================================================
function IsSeperator(s:Char):boolean;
var i:integer;
begin
  result:=false;
  for i:=1 to Max_Set do
    if s=Seperator_Set[i] then
    begin
      result:=true;
      exit;
    end;
end;

function AnalysText(ws:String):TStrings;
var
  ws_result:TStrings;
  i,j,ws_length:integer;
  finished:boolean;
begin
  ws_result:=TStringList.Create;
  ws_length:=Length(ws);

  if ws_length=0 then
    ws_result.Add(ws)
  else
  begin
    finished:=false;
    i:=1;
    repeat
      j:=i;
      while (j<=ws_length)and(not IsSeperator(ws[j])) do
        inc(j);
      ws_result.Add(Copy(ws,i,j-i));
      if (j>=ws_length) then
        finished:=true
      else
        i:=j+1;
    until finished=true;
  end;
  result:=ws_result;
end;
//===So sanh hai cau ====================================================
function CompareTwoSentences(wsSource,wsTarget:WideString):Double;
var stSource,stTarget:TStrings;
    compare_count,i,j:integer;
    r1,r2,r3,r4:double;
begin
  stSource:=AnalysText(Utf8Encode(WideUpperCase(wsSource)));
  stTarget:=AnalysText(Utf8Encode(WideUpperCase(wsTarget)));
  result:=GetAnalogDegree(stSource,stTarget);
  stSource.Free;
  stTarget.Free;
end;
//===So sanh hai tu ====================================================
function CompareTwoWords(wsDest,wsTarget:WideString):Double;
var ucDest,ucTarget,ucTemp:String;
   r1,r2:Double;
begin
  ucDest:=Utf8Encode(WideUpperCase(Trim(wsDest)));
  ucTarget:=Utf8Encode(WideUpperCase(Trim(wsTarget)));
  r1:=GetAnalogDegree(ucTarget,ucTarget);
  if (r1=0) then
  begin
    result:=0;
    exit;
  end
  else
  begin
    r2:=GetAnalogDegree(ucDest,ucTarget);
    result:=r2/r1;
  end;
end;
//=================================================
function GetAnalogDegree(st1,st2:string):double;
var l1,l2,i,j,target_pos:integer;
    st_temp:string;
begin
  l1:=Length(St1);
  l2:=Length(st2);
  if (l1=0) or (l2=0) then
  begin
    if (l1=0)and(l2=0) then
      result:=1
    else
      Result:=0;
  end
  else
  begin
    result:=0;
    for i:=1 to l1 do
     for j:=i to l1 do
     begin
       st_temp:=Copy(st1,i,j-i+1);
       target_pos:=Pos(st_temp,st2);
       if target_pos>0 then
         Result:=Result+(j-i+1);///(Abs(target_pos-i)+1);
     end;
  end;
end;
//========================================================
function GetAnalogDegree(st1,st2:TStrings):double;
var l1,l2,i,j,target_pos:integer;
    st_temp:TStrings;
    analog_degree:double;
begin
  l1:=St1.Count;
  l2:=st2.Count;
  if (l1=0) or (l2=0) then
  begin
    if (l1=0)and(l2=0) then
      result:=1
    else
      Result:=0;
  end
  else
  begin
    result:=0;
    for i:=0 to l1-1 do
    for j:=i to l1-1 do
     begin
       st_temp:=Copy_(st1,i,j-i+1);
       target_pos:=Pos_(st_temp,st2,analog_degree);
       if target_pos>=0 then
         Result:=Result+st_temp.Count;
       st_temp.Free;
     end;
     result:=result/(st1.Count*st2.Count);
  end;
end;

end.
