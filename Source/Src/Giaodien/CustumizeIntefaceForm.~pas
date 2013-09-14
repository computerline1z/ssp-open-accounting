unit CustumizeIntefaceForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, TntForms, Dialogs,
  ExtCtrls, Buttons, StdCtrls, dxExEdtr, dxEdLib, dxEditor, dxCntner, dxLayoutControl,
  cxControls,dxLayoutLookAndFeels, Registry, ImgList, dxDBEdtr, dxDBELib, Forms,
  DB, IBCustomDataSet, IBQuery,Variants, IBODataset, ElXPThemedControl,HtmlHlp,
  ElEdits, ElCLabel, ElLabel, ElBtnCtl, ElPopBtn, ElCaption, ElCheckCtl;

type
  TFormCustumizeInteface = class(TForm)
    pnSeparator: TPanel;
    Bevel1: TBevel;
    Panel1: TPanel;
    Panel2: TPanel;
    BSample: TELPopupButton;
    BWeb: TELPopupButton;
    BRealBlank: TELPopupButton;
    BFlat: TELPopupButton;
    BStandard: TELPopupButton;
    ImageList: TImageList;
    edBorderColor: TdxButtonEdit;
    edBorderStyle: TdxPickEdit;
    edButtonViewStyle: TdxPickEdit;
    ButtonTransparence: TdxPickEdit;
    cbLeft: TdxCheckEdit;
    cbRight: TdxCheckEdit;
    cbTop: TdxCheckEdit;
    cbBottom: TdxCheckEdit;
    cbHotTrack: TdxCheckEdit;
    cbShadow: TdxCheckEdit;
    ColorDialog: TColorDialog;
    dxLayoutControlGroup_Root: TdxLayoutGroup;
    dxLayoutControl: TdxLayoutControl;
    dxLayoutControlGroup1: TdxLayoutGroup;
    dxLayoutLookAndFeelListGobal: TdxLayoutLookAndFeelList;
    lfActiveX: TdxLayoutWebLookAndFeel;
    StyleWeb: TdxLayoutWebLookAndFeel;
    btnLoaibo: TELPopupButton;
    dxLayoutControlItem12: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControlItem16: TdxLayoutItem;
    dxLayoutControlGroup9: TdxLayoutGroup;
    BCustomize: TELPopupButton;
    StyleDetrong: TdxLayoutWebLookAndFeel;
    StyleStandard: TdxLayoutStandardLookAndFeel;
    StylePhang: TdxLayoutWebLookAndFeel;
    StyleMacDinh: TdxLayoutWebLookAndFeel;
    dxLayoutControlItem14: TdxLayoutItem;
    BitBtn1: TELPopupButton;
    ElFormCaption1: TElFormCaption;
    dxLayoutControlGroup7: TdxLayoutGroup;
    dxLayoutControlItem17: TdxLayoutItem;
    dxLayoutControlItem18: TdxLayoutItem;
    dxLayoutControlItem19: TdxLayoutItem;
    dxLayoutControlItem20: TdxLayoutItem;
    dxLayoutControlItem21: TdxLayoutItem;
    dxLayoutControlItem22: TdxLayoutItem;
    dxLayoutControlItem23: TdxLayoutItem;
    dxLayoutControlItem24: TdxLayoutItem;
    dxLayoutControlItem25: TdxLayoutItem;
    dxLayoutControlItem26: TdxLayoutItem;
    dxLayoutControlGroup12: TdxLayoutGroup;
    dxLayoutControlGroup13: TdxLayoutGroup;
    dxLayoutControlGroup15: TdxLayoutGroup;
    dxLayoutControlGroup16: TdxLayoutGroup;
    dxLayoutControlItem27: TdxLayoutItem;
    dxLayoutControlItem28: TdxLayoutItem;
    dxLayoutControlItem29: TdxLayoutItem;
    dxLayoutControlItem30: TdxLayoutItem;
    dxLayoutControlGroup17: TdxLayoutGroup;
    dxLayoutControlItem31: TdxLayoutItem;
    dxLayoutControlItem32: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutGroup;
    dxLayoutControlGroup4: TdxLayoutGroup;
    dxEdit1: TdxEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    dxEdit2: TdxEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    dxEdit3: TdxEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    dxDateEdit1: TdxDateEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    dxPickEdit1: TdxPickEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dxCheckEdit1: TdxCheckEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    ebtnBB: TdxButtonEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    ebtnReadOnly: TdxButtonEdit;
    dxLayoutControlItem8: TdxLayoutItem;
    dxEdit4: TdxEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    dxLayoutControlGroup8: TdxLayoutGroup;
    dxLayoutControlGroup10: TdxLayoutGroup;
    dxLayoutControlGroup5: TdxLayoutGroup;
    dxLayoutControlGroup6: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure edBorderColorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edBorderStyleChange(Sender: TObject);
    procedure edButtonViewStyleChange(Sender: TObject);
    procedure ButtonTransparenceChange(Sender: TObject);
    procedure cbLeftClick(Sender: TObject);
    procedure cbTopChange(Sender: TObject);
    procedure cbRightChange(Sender: TObject);
    procedure cbBottomChange(Sender: TObject);
    procedure cbHotTrackClick(Sender: TObject);
    procedure cbShadowClick(Sender: TObject);
    procedure edBorderColorDblClick(Sender: TObject);
    procedure BSampleClick(Sender: TObject);
    procedure BWebClick(Sender: TObject);
    procedure BStandardClick(Sender: TObject);
    procedure BFlatClick(Sender: TObject);
    procedure BRealBlankClick(Sender: TObject);
    procedure WriteRegistry;
    procedure ApplyInterface();
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BCustomizeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure ebtnBBButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure ebtnReadOnlyButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ebtnBBDblClick(Sender: TObject);
    procedure ebtnReadOnlyDblClick(Sender: TObject);
    procedure btnLoaiboClick(Sender: TObject);
  private
    PosActiveStyle: Integer; // gia tri nay xac dinh style nao dang hoat dong trong chuong trinh
  protected
    procedure InitCustomize;
  public
  end;

var
  FormCustumizeInteface: TFormCustumizeInteface;

implementation

uses GlobalInterface, DMInterface, GlobalUnit;


{$R *.DFM}

procedure TFormCustumizeInteface.InitCustomize;
begin
  {edBorderColor.Color := ActiveStyleController.BorderColor;
  edBorderStyle.ItemIndex := Integer(ActiveStyleController.BorderStyle);
  edButtonViewStyle.ItemIndex := Integer(ActiveStyleController.ButtonStyle);
  ButtonTransparence.ItemIndex := Integer(ActiveStyleController.ButtonTransparence);
  cbHotTrack.Checked := ActiveStyleController.HotTrack;
  cbShadow.Checked := ActiveStyleController.Shadow;
  cbLeft.Checked := edgLeft in ActiveStyleController.Edges;
  cbRight.Checked := edgRight in ActiveStyleController.Edges;
  cbTop.Checked := edgTop in ActiveStyleController.Edges;
  cbBottom.Checked := edgBottom in ActiveStyleController.Edges;}
end;

procedure TFormCustumizeInteface.FormShow(Sender: TObject);
begin
 // BSampleClick(nil);
  dxDateEdit1.Date:=Now;
end;

procedure TFormCustumizeInteface.edBorderColorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  ColorDialog.Color := edBorderColor.Color;
  if ColorDialog.Execute then
  begin
    edBorderColor.Color := ColorDialog.Color;
    edBorderColor.Font.Color := ColorToRGB(edBorderColor.Color) xor $FFFFFF;
    InterfaceDM.edtStyleController.BorderColor := edBorderColor.Color;
  end;
end;

procedure TFormCustumizeInteface.edBorderColorDblClick(Sender: TObject);
begin
  edBorderColorButtonClick(nil, 0);
end;

procedure TFormCustumizeInteface.edBorderStyleChange(Sender: TObject);
begin
  InterfaceDM.edtStyleController.BorderStyle := TdxEditBorderStyle(edBorderStyle.ItemIndex);
end;

procedure TFormCustumizeInteface.edButtonViewStyleChange(Sender: TObject);
begin
  InterfaceDM.edtStyleController.ButtonStyle := TdxEditButtonViewStyle(edButtonViewStyle.ItemIndex);
end;

procedure TFormCustumizeInteface.ButtonTransparenceChange(Sender: TObject);
begin
  InterfaceDM.edtStyleController.ButtonTransparence := TdxEditButtonTransparence(ButtonTransparence.ItemIndex);
end;

procedure TFormCustumizeInteface.cbLeftClick(Sender: TObject);
begin
    with InterfaceDM.edtStyleController do
    begin
      if cbLeft.Checked then
        Edges := Edges + [edgLeft]
      else
        Edges := Edges - [edgLeft];
    end;
end;

procedure TFormCustumizeInteface.cbTopChange(Sender: TObject);
begin
    with InterfaceDM.edtStyleController do
    begin
      if cbTop.Checked then
        Edges := Edges + [edgTop]
      else
        Edges := Edges - [edgTop];
    end;
end;

procedure TFormCustumizeInteface.cbRightChange(Sender: TObject);
begin
    with InterfaceDM.edtStyleController do
    begin
      if cbRight.Checked then
        Edges := Edges + [edgRight]
      else
        Edges := Edges - [edgRight];
    end;
end;

procedure TFormCustumizeInteface.cbBottomChange(Sender: TObject);
begin
    with InterfaceDM.edtStyleController do
    begin
      if cbBottom.Checked then
        Edges := Edges + [edgBottom]
      else
        Edges := Edges - [edgBottom];
    end;
end;

procedure TFormCustumizeInteface.cbHotTrackClick(Sender: TObject);
begin
    InterfaceDM.edtStyleController.HotTrack := cbHotTrack.Checked;
end;

procedure TFormCustumizeInteface.cbShadowClick(Sender: TObject);
begin
    InterfaceDM.edtStyleController.Shadow := cbShadow.Checked;
end;

procedure TFormCustumizeInteface.BSampleClick(Sender: TObject);
begin
  with InterfaceDM.edtStyleController do
  begin
    BorderColor := $00B4D3DE;
    BorderStyle := TdxeditBorderStyle(1);
    ButtonStyle := TdxEditButtonViewStyle(3);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := true;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  dxLayoutControl.LookAndFeel := lfActiveX;
  PosActiveStyle := 0;

end;

procedure TFormCustumizeInteface.BWebClick(Sender: TObject);
begin
  with InterfaceDM.edtStyleController do
  begin
    BorderColor := clSkyBlue;
    BorderStyle := TdxeditBorderStyle(1);
    ButtonStyle := TdxEditButtonViewStyle(1);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := false;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  dxLayoutControl.LookAndFeel := StyleWeb;
  PosActiveStyle := 1;
end;

procedure TFormCustumizeInteface.BStandardClick(Sender: TObject);
begin
  with InterfaceDM.edtStyleController do
  begin
    BorderColor := clSkyBlue;
    BorderStyle := TdxeditBorderStyle(3);
    ButtonStyle := TdxEditButtonViewStyle(0);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := false;
    HotTrack := false;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  dxLayoutControl.LookAndFeel := StyleStandard;
  PosActiveStyle := 4;

end;

procedure TFormCustumizeInteface.BFlatClick(Sender: TObject);
begin
  with InterfaceDM.edtStyleController do
  begin
    BorderColor := $00BABEA7;
    BorderStyle := TdxeditBorderStyle(3);
    ButtonStyle := TdxEditButtonViewStyle(0);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := false;
    HotTrack := false;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  dxLayoutControl.LookAndFeel := StylePhang;
  PosActiveStyle := 3;
end;

procedure TFormCustumizeInteface.BRealBlankClick(Sender: TObject);
begin
  with InterfaceDM.edtStyleController do
  begin
    BorderColor := $00B7C0DB;
    BorderStyle := TdxeditBorderStyle(0);
    ButtonStyle := TdxEditButtonViewStyle(0);
    ButtonTransparence := TdxEditButtonTransparence(3);
    Shadow := false;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  dxLayoutControl.LookAndFeel := StyleDetrong;
  PosActiveStyle := 2; // style o vi tri hai trong style
end;

procedure TFormCustumizeInteface.WriteRegistry;
var
  reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey('SoftWare\SSP\Interface', TRUE) then
    with InterfaceDM do
    begin
      Reg.WriteInteger('BorderColor', Integer(edtStyleController.BorderColor));
      Reg.WriteInteger('BorderStyle', Integer(edtStyleController.BorderStyle));
      Reg.WriteInteger('ButtonStyle', Integer(edtStyleController.ButtonStyle));
      Reg.WriteInteger('ButtonTransparence', Integer(edtStyleController.ButtonTransparence));
      reg.WriteBool('EdgesLeft', edgLeft in edtStyleController.Edges);
      reg.WriteBool('EdgesRight', edgRight in edtStyleController.Edges);
      reg.WriteBool('EdgesTop', edgTop in edtStyleController.Edges);
      reg.WriteBool('EdgesBottom', edgBottom in edtStyleController.Edges);
      reg.WriteBool('HotTrack', edtStyleController.HotTrack);
      reg.WriteBool('Shadow', edtStyleController.Shadow); // het cac thuoc tinh cua style control
      reg.WriteInteger('PosActiveStyle', PosActiveStyle); // luu lai style nao dau tien

      Reg.WriteInteger('BatBuocColor', Integer(ebtnBB.Color));
      Reg.WriteInteger('ReadOnlyColor', Integer(ebtnReadOnly.Color));
    end;
  finally
    reg.Free;
  end;
  ApplyInterface;
end;

procedure TFormCustumizeInteface.ApplyInterface();
var i: Integer;
begin
  GlobalActiveStyle := PosActiveStyle;
  for i := 0 to Screen.CustomFormCount - 1 do
    if screen.CustomForms[i] <> FormCustumizeInteface then
      begin
          ApplyUserInterface(TControl(screen.CustomForms[i]));
      end;
end;

procedure TFormCustumizeInteface.btnOKClick(Sender: TObject);
begin
  ColorBB:=ebtnBB.Color;
  ColorReadOnly:=ebtnReadOnly.Color;
  WriteRegistry;
end;

procedure TFormCustumizeInteface.FormCreate(Sender: TObject);
begin
//[NXHop sua]
  dxPickEdit1.Items[0]:=Utf8Decode('Tp Hồ Chí Minh');
  dxPickEdit1.Items[1]:=Utf8Decode('Hà Nội');
  dxPickEdit1.Items[2]:=Utf8Decode('Tiền Giang');
  dxPickEdit1.Items[3]:=Utf8Decode('Long An');
  dxPickEdit1.Items[4]:=Utf8Decode('CàMau');
  dxPickEdit1.Items[5]:=Utf8Decode('Nha Trang');
  ApplyUserInterface(TControl(Sender));
//
  SetCaption(Self);

  PosActiveStyle := GlobalActiveStyle;
  ebtnBB.Color:=ColorBB;
  ebtnReadOnly.Color:=ColorReadOnly;
  InitCustomize;
  case PosActiveStyle of
    0: // style co' bong
    begin
      dxLayoutControl.LookAndFeel := lfActiveX;
      BSample.Down:=True;
    end;
    1: // style kieu web
    begin
      dxLayoutControl.LookAndFeel := StyleWeb;
      BWeb.Down:=True;
    end;
    2: // style trong
    begin
      dxLayoutControl.LookAndFeel := StyleDetrong;
      BRealBlank.Down:=True;
    end;
    3: // style phang
    begin
      dxLayoutControl.LookAndFeel := StylePhang;
      BFlat.Down:=True;
    end;
    4: // style chuan
    begin
      dxLayoutControl.LookAndFeel := StyleStandard;
      BStandard.Down:=True;
    end;
    5: // style mac dinh
    begin
      dxLayoutControl.LookAndFeel := StyleMacDinh;
      BCustomize.Down:=True;
    end;
  end;

  with InterfaceDM do
  begin
    edBorderColor.Color :=edtStyleController.BorderColor;
    edBorderStyle.ItemIndex:=Integer(edtStyleController.BorderStyle);
    edButtonViewStyle.ItemIndex:=Integer(edtStyleController.ButtonStyle);
    ButtonTransparence.ItemIndex:=Integer(edtStyleController.ButtonTransparence);
    cbLeft.Checked:=edgLeft in edtStyleController.Edges;
    cbRight.Checked:=edgRight in edtStyleController.Edges;
    cbTop.Checked:=edgTop in edtStyleController.Edges;
    cbBottom.Checked:=edgBottom in edtStyleController.Edges;
    cbHotTrack.Checked:=edtStyleController.HotTrack;
    cbShadow.Checked:=edtStyleController.Shadow;
  end;
end;

procedure TFormCustumizeInteface.BCustomizeClick(Sender: TObject);
begin
  with InterfaceDM.edtStyleController do
  begin
    BorderColor := $00B4D3DE;
    BorderStyle := TdxeditBorderStyle(1);
    ButtonStyle := TdxEditButtonViewStyle(3);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := False;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  dxLayoutControl.LookAndFeel := StyleMacDinh;
  PosActiveStyle := 5;
end;

procedure TFormCustumizeInteface.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TFormCustumizeInteface.BitBtn1Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/TuychonGiaodien.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TFormCustumizeInteface.ebtnBBButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  ColorDialog.Color := ebtnBB.Color;
  if ColorDialog.Execute then
    ebtnBB.Color := ColorDialog.Color;
end;

procedure TFormCustumizeInteface.ebtnReadOnlyButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  ColorDialog.Color := ebtnReadOnly.Color;
  if ColorDialog.Execute then
    ebtnReadOnly.Color := ColorDialog.Color;
end;

procedure TFormCustumizeInteface.ebtnBBDblClick(Sender: TObject);
begin
  ebtnBBButtonClick(Sender,0);
end;

procedure TFormCustumizeInteface.ebtnReadOnlyDblClick(Sender: TObject);
begin
  ebtnReadOnlyButtonClick(Sender,0);
end;

procedure TFormCustumizeInteface.btnLoaiboClick(Sender: TObject);
begin
  if not ReadRegistry then
    GlobalActiveStyle :=5;
end;

end.

