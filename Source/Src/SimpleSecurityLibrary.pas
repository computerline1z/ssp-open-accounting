// Slightly modified version of
// Inprise TI 2803:  How to Encrypt a String
// www.inprise.com/devsupport/delphi/ti_list/TI2803.html
//
// Output encrypted string in hex
//
// efg, 3 Feb 1999

unit SimpleSecurityLibrary;

interface

type
  TSecurity =
    class(TObject)
  private
    Fconstant1: WORD;
    Fconstant2: WORD;
  public
    constructor Create(const constant1, constant2: WORD);
    function Encrypt(const s: string; const StartKey: WORD): string;
    function Decrypt(const s: string; const StartKey: WORD): string;
  end;


implementation

uses
  SysUtils; // IntToHex


constructor TSecurity.Create(const constant1, constant2: WORD);
begin
  Fconstant1 := constant1;
  Fconstant2 := constant2
end {Create};


function TSecurity.Encrypt(const s: string; const StartKey: WORD): string;
var
  b: BYTE;
  i: INTEGER;
  key: WORD;
begin
  key := StartKey;
  RESULT := '';
  for i := 1 to LENGTH(s) do
  begin
    b := BYTE(s[i]) xor (key shr 8);
    key := (b + key) * Fconstant1 + Fconstant2;
    RESULT := RESULT + IntToHex(b, 2)
  end
end {Encrypt};


function TSecurity.Decrypt(const s: string; const StartKey: WORD): string;
var
  b: BYTE;
  i: INTEGER;
  key: WORD;
begin
  b := 0; // Avoid compiler initialization warning

  key := StartKey;
  RESULT := '';
  for i := 1 to LENGTH(s) div 2 do
  begin
    try
      b := StrToInt('$' + COPY(s, 2 * i - 1, 2));
    except
      on EConvertError do b := 0
    end;
    RESULT := RESULT + CHAR(b xor (key shr 8));
    key := (b + key) * Fconstant1 + Fconstant2
  end
end {Decrypt};


end.
