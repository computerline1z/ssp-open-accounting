unit BarCodeForTax;

interface
uses SysUtils;
type
//  TType = Array[11..43] of String; // Cac truong T cua HCMTAX

  { QuynhND - them vao phan bao cao ma vach}
  TType = Array[11..43] of String; // Cac truong T cua HCMTAX
  function Encode(MaSo,Thang,Nam,SoDT,Fax,Email,HoatDong : String; T : TType) : String;
  function Encode1(Stt1, Stt2, LoaiToKhai, MaSo, Thang, Nam, HoatDong : String;
                 T : TType; SoDT, Fax, Email, stt13 : string) : String;

implementation

function Encode(MaSo,Thang,Nam,SoDT,Fax,Email,HoatDong : String;T : TType) : String;
var
  i             : integer;
  i1            : byte;
  St            : String;
  SpecialNumber : Double;
begin
  // hic, mo ra so nay met qua', mat den 1 tieng :((
  SpecialNumber :=
    - Round(StrToFloat(T[13]))//29]))
    - Round(StrToFloat(T[19]))//30]))
    + Round(StrToFloat(T[21]))//31]))
    + Round(StrToFloat(T[31]))//34]))
    + Round(StrToFloat(T[33]))//35]))
    + Round(StrToFloat(T[35]))//36]))
    - Round(StrToFloat(T[37]));//37]));

  St :=
   // Signature
    'GTGT01'+#4+'1'+#4+

  // Header
    MaSo+#4+
    Thang+#4+
    Nam+#4+#4+
    SoDT+#4+
    Fax+#4+
    Email+#4+

 // 1 : Hoat dong
 // 0 : Khong hoat dong
    HoatDong+#4+

 // Cac TextBox ID dua tren HCMTAX
    T[12]+#4+
    T[13]+#4+
    T[14]+#4+
    T[15]+#4+
    T[16]+#4+
    T[17]+#4+
    T[18]+#4+
    T[19]+#4+
    T[20]+#4+
    T[21]+#4+
    T[22]+#4+
    T[23]+#4+
    T[24]+#4+
    T[25]+#4+
    T[26]+#4+
    T[27]+#4+
    T[28]+#4+
    T[29]+#4+
    T[30]+#4+
    T[31]+#4+
    T[32]+#4+
    T[33]+#4+
    T[34]+#4+
    T[35]+#4+
    T[36]+#4+
    T[37]+#4+
    T[38]+#4+
    T[39]+#4+
    T[40]+#4+
    T[41]+#4+
    T[42]+#4+
    T[43]+#4+

 // Con so quy nay de lam gi vay troi, chac la de checksum :((
    FloatToStr(SpecialNumber)+#4;

 // Thuat toan encode cua chuong trinh
  i1:= 1;
  for i:=1 to Length(St) do
  begin
    St[i] :=Chr(Ord(St[i]) + i1);

    inc(i1);
    if i1 = 3 then i1:= 0;
  end;

  Result :=#2 + #2 + St;
end;

//QuynhND - Them bao cao ma vach moi vao.
function Encode1(Stt1, Stt2, LoaiToKhai, MaSo, Thang, Nam, HoatDong : String;
                 T : TType; SoDT, Fax, Email, stt13 : string) : String;
var
  i             : integer;
  i1            : byte;
  St            : String;
  SpecialNumber : Double;
begin
  SpecialNumber :=
    - Round(StrToFloat(T[13]))//29]))
    - Round(StrToFloat(T[19]))//30]))
    + Round(StrToFloat(T[21]))//31]))
    + Round(StrToFloat(T[31]))//34]))
    + Round(StrToFloat(T[33]))//35]))
    + Round(StrToFloat(T[35]))//36]))
    - Round(StrToFloat(T[37]));//37]));

  St :=
    'GTGT01'+#4+'1'+#4+
    Stt1+#4+
    Stt2+#4+

    //1 : Chinh thuc, 2: Thay the
    LoaiToKhai+#4+

    MaSo+#4+
    Thang+#4+
    Nam+#4+#4+

 // 1 : Hoat dong
 // 0 : Khong hoat dong
    HoatDong+#4+

    T[12]+#4+
    T[13]+#4+
    T[14]+#4+
    T[15]+#4+
    T[16]+#4+
    T[17]+#4+
    T[18]+#4+
    T[19]+#4+
    T[20]+#4+
    T[21]+#4+
    T[22]+#4+
    T[23]+#4+
    T[24]+#4+
    T[25]+#4+
    T[26]+#4+
    T[27]+#4+
    T[28]+#4+
    T[29]+#4+
    T[30]+#4+
    T[31]+#4+
    T[32]+#4+
    T[33]+#4+
    T[34]+#4+
    T[35]+#4+
    T[36]+#4+
    T[37]+#4+
    T[38]+#4+
    T[39]+#4+
    T[40]+#4+
    T[41]+#4+
    T[42]+#4+
    T[43]+#4+

    SoDT+#4+
    Fax+#4+
    Email+#4+
    Stt13+#4+

    FloatToStr(SpecialNumber)+#4;

  i1 := 1;
  for i := 1 to Length(St) do
  begin
    St[i] := Chr(Ord(St[i]) + i1);

    inc(i1);
    if i1 = 3 then i1:= 0;
  end;

  Result := #2 + #2 + St;
end;

end.


