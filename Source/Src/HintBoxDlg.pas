unit HintBoxDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ElCLabel, ElLabel, ElTimers, dxfShapedForm,
  GIFImage, ImgList;

type
  TfrmHintBox = class(TForm)
    Image: TImage;
    lbTitle: TElLabel;
    lbPromt: TElLabel;
    ElTimerPool: TElTimerPool;
    imglMain: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ElTimerPoolItems0Timer(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElTimerPoolItems1Timer(Sender: TObject);
    function IIf(Condition: Boolean; TruePart, FalsePart: Variant): Variant;
  private
    { Private declarations }
    direction: SmallInt;
    reg_p: array[0..23] of TPoint;
    rar_p: array[0..11] of TPoint;
    brd_p: array[0..24] of TPoint;
    bar_p: array[0..11] of TPoint;
  public
    { Public declarations }
    constructor Create(Owner: TComponent; X, Y: Integer; Promt, Title: WideString;IconID:integer=0);
  end;

var
  frmHintBox: TForm;

implementation

uses VarUtils;

{$R *.dfm}
function TfrmHintBox.IIf(Condition: Boolean; TruePart, FalsePart: Variant): Variant;
begin
  if Condition then Result := TruePart else Result := FalsePart;
end;

procedure TfrmHintBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmHintBox.FormDestroy(Sender: TObject);
begin
  frmHintBox := nil;
end;

procedure TfrmHintBox.ElTimerPoolItems0Timer(Sender: TObject);
begin
  AlphaBlendValue := AlphaBlendValue + direction;
  if (AlphaBlendValue >= 220) then
  begin
    ElTimerPool.Items[0].Enabled := False;
    ElTimerPool.Items[1].Enabled := True;
  end
  else
  if (AlphaBlendValue <= 0) then
    Close;
end;

constructor TfrmHintBox.Create(Owner: TComponent; X, Y: Integer; Promt, Title: WideString;IConID:integer);
var
  Region: HRgn;
  d, id, i, p: Integer;
  tmp: TStringList;
  pt: TPoint;
begin
  inherited Create(Application);
  direction := 10;
{
  if Assigned(Owner) then
    pt := TControl(Owner).ClientToScreen(Point(X, Y))
  else
}
    pt := Point(X, Y);
  X := pt.X; Y := pt.Y;
  tmp := TStringList.Create;
  tmp.Text := Promt;
  lbTitle.Caption := Title; lbPromt.Caption := Promt;
  d := 20;
  Width := IIf(lbTitle.Width > lbPromt.Width, lbTitle.Width, lbPromt.Width) + 40;
  if tmp.Count > 1 then Height := tmp.Count * 14 + 70;
  //Calculate the postition type of the arrow
  if X + Width - d >= Screen.Width then p := $6 else p := $9;
  if Y - Height <= 0 then p := (p and $C) else p := (p and $3);
  //Array lists
  reg_p[0] := Point(0, 3 + d); brd_p[0] := Point(0, 3 + d); brd_p[24] := Point(0, 3 + d);
  reg_p[1] := Point(1, 3 + d); brd_p[1] := Point(1, 3 + d);
  reg_p[2] := Point(1, 1 + d); brd_p[2] := Point(1, 1 + d);
  reg_p[3] := Point(3, 1 + d); brd_p[3] := Point(3, 1 + d);
  reg_p[4] := Point(3, 0 + d); brd_p[4] := Point(3, 0 + d);
  reg_p[5] := Point(Width - 3, 0 + d); brd_p[5] := Point(Width - 4, 0 + d);
  reg_p[6] := Point(Width - 3, 1 + d); brd_p[6] := Point(Width - 4, 1 + d);
  reg_p[7] := Point(Width - 1, 1 + d); brd_p[7] := Point(Width - 2, 1 + d);
  reg_p[8] := Point(Width - 1, 3 + d); brd_p[8] := Point(Width - 2, 3 + d);
  reg_p[9] := Point(Width, 3 + d); brd_p[9] := Point(Width - 1, 3 + d);
  reg_p[10] := Point(Width, Height - d); brd_p[10] := Point(Width - 1, Height - d - 1);
  reg_p[11] := Point(Width, Height - d - 3); brd_p[11] := Point(Width - 1, Height - d - 4);
  reg_p[12] := Point(Width - 1, Height - d - 3); brd_p[12] := Point(Width - 2, Height - d - 4);
  reg_p[13] := Point(Width - 1, Height - d - 1); brd_p[13] := Point(Width - 2, Height - d - 2);
  reg_p[14] := Point(Width - 3, Height - d - 1); brd_p[14] := Point(Width - 4, Height - d - 2);
  reg_p[15] := Point(Width - 3, Height - d); brd_p[15] := Point(Width - 4, Height - d - 1);
  reg_p[16] := Point(3, Height - d); brd_p[16] := Point(3, Height - d - 1);
  reg_p[17] := Point(3, Height - d - 1); brd_p[17] := Point(3, Height - d - 2);
  reg_p[18] := Point(1, Height - d - 1); brd_p[18] := Point(1, Height - d - 2);
  reg_p[19] := Point(1, Height - d - 3); brd_p[19] := Point(1, Height - d - 4);
  reg_p[20] := Point(0, Height - d - 3); brd_p[20] := Point(0, Height - d - 4);

  rar_p[0] := Point(d, d); rar_p[1] := Point(d, 0); rar_p[2] := Point(2 * d, d);
  rar_p[3] := Point(Width - 2 * d, d); rar_p[4] := Point(Width - d, 0); rar_p[5] := Point(Width - d, d);
  rar_p[6] := Point(Width - d, Height - d); rar_p[7] := Point(Width - d, Height); rar_p[8] := Point(Width - 2 * d, Height - d);
  rar_p[9] := Point(2 * d, Height - d); rar_p[10] := Point(d, Height); rar_p[11] := Point(d, Height - d);

  bar_p[0] := Point(d, d); bar_p[1] := Point(d, 1); bar_p[2] := Point(2 * d - 1, d);
  bar_p[3] := Point(Width - 2 * d, d); bar_p[4] := Point(Width - d - 1, 1); bar_p[5] := Point(Width - d - 1, d);
  bar_p[6] := Point(Width - d - 1, Height - d - 1); bar_p[7] := Point(Width - d - 1, Height - 1); bar_p[8] := Point(Width - 2 * d - 1, Height - d - 1);
  bar_p[9] := Point(2 * d, Height - d - 1); bar_p[10] := Point(d, Height - 1); bar_p[11] := Point(d, Height - d - 1);
  //Calculate the postition of the form, assign the array
  case p of
    $8: begin Left := X - d; Top := Y; id := 8; end;
    $4: begin Left := X + d - Width; Top := Y; id := 8; end;
    $2: begin Left := X + d - Width; Top := Y - Height; id := 19; end;
    $1: begin Left := X - d; Top := Y - Height; id := 19; end;
  end;
  for i := 23 downto id do
  begin
    reg_p[i] := reg_p[i - 3]; brd_p[i] := brd_p[i - 3];
  end;
  case p of
    $8:
      begin
        reg_p[5] := rar_p[0]; reg_p[6] := rar_p[1]; reg_p[7] := rar_p[2];
        brd_p[5] := bar_p[0]; brd_p[6] := bar_p[1]; brd_p[7] := bar_p[2];
      end;
    $4:
      begin
        reg_p[5] := rar_p[3]; reg_p[6] := rar_p[4]; reg_p[7] := rar_p[5];
        brd_p[5] := bar_p[3]; brd_p[6] := bar_p[4]; brd_p[7] := bar_p[5];
      end;
    $2:
      begin
        reg_p[16] := rar_p[6]; reg_p[17] := rar_p[7]; reg_p[18] := rar_p[8];
        brd_p[16] := bar_p[6]; brd_p[17] := bar_p[7]; brd_p[18] := bar_p[8];
      end;
    $1:
      begin
        reg_p[16] := rar_p[9]; reg_p[17] := rar_p[10]; reg_p[18] := rar_p[11];
        brd_p[16] := bar_p[9]; brd_p[17] := bar_p[10]; brd_p[18] := bar_p[11];
      end;
  end;
  Region := CreatePolygonRgn(reg_p, 24, ALTERNATE);
  SetWindowRgn(Handle, Region, True);
  //NXHop modified and notified
  imglMain.GetBitmap(IconID, Image.Picture.Bitmap);
  Image.Transparent:=true;
end;

procedure TfrmHintBox.FormPaint(Sender: TObject);
begin
  with Canvas do
  begin
    Pen.Color := clBlack;
    Polyline(brd_p);
  end;
end;

procedure TfrmHintBox.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TfrmHintBox.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Close;
end;

procedure TfrmHintBox.ElTimerPoolItems1Timer(Sender: TObject);
begin
  direction := -10;
  ElTimerPool.Items[0].Enabled := True;
end;

end.

