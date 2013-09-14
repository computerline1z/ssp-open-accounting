unit MsgDlgForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner,
  dxEditor, dxEdLib, TntButtons, ElXPThemedControl, ElEdits, ElCaption,
  ElBtnCtl, ElPopBtn, ElCLabel, ElLabel, ExtCtrls, ElACtrls,
  dxLayoutLookAndFeels;

type
  TMsgDlgFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    lbtnCancel: TdxLayoutItem;
    btnYes: TElPopupButton;
    lbtnYes: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Item1: TdxLayoutItem;
    LblContent: TElLabel;
    bntNo: TElPopupButton;
    lbtnNo: TdxLayoutItem;
    btnClose: TElPopupButton;
    lbtnClose: TdxLayoutItem;
    loc_img1: TdxLayoutItem;
    Image1: TImage;
    loc_img4: TdxLayoutItem;
    Image2: TImage;
    loc_img3: TdxLayoutItem;
    Image3: TImage;
    loc_img2: TdxLayoutItem;
    Image4: TImage;
    ElPopupButton1: TElPopupButton;
    locBtnDetail: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    mmDetail: TElAdvancedMemo;
    locDetailInfo: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    locBtn: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MsgDlgFrm: TMsgDlgFrm;

implementation

uses MainDataMdl, GlobalUnit;

{$R *.dfm}

procedure TMsgDlgFrm.FormShow(Sender: TObject);
begin
  LblContent.Caption:=MsgText;
  locBtnDetail.Visible:=(MsgDetail<>'');
  if MsgDetail<>'' then
  begin
    mmDetail.Text:=MsgDetail;
    //locBtnsContain.AlignHorz:=ahCenter;//ahClient;
    //lbtnClose.AlignHorz:=ahCenter;
  end
  else
  begin
    //locBtnsContain.AlignHorz:=ahCenter;
    //lbtnClose.AlignHorz:=ahLeft;
  end;
  
  ElFormCaption1.Texts[0].Caption:=MsgTitle;
  loc_img1.Visible:=False;
  loc_img2.Visible:=False;
  loc_img3.Visible:=False;
  loc_img4.Visible:=False;
  case MsgICon of
    1: loc_img1.Visible:=True;
    2: loc_img2.Visible:=True;
    3: loc_img3.Visible:=True;
    4: loc_img4.Visible:=True;
  end;
  case MsgType of
    3:
    begin
      lbtnYes.Visible:=True;
      lbtnNo.Visible:=True;
      lbtnClose.Visible:=False;
      lbtnCancel.Visible:=True;
    end;
    4:
    begin
      lbtnYes.Visible:=True;
      lbtnNo.Visible:=True;
      lbtnClose.Visible:=False;
      lbtnCancel.Visible:=False;
    end;
    else
    begin
      lbtnYes.Visible:=False;
      lbtnNo.Visible:=False;
      lbtnClose.Visible:=True;
      lbtnCancel.Visible:=False;
    end;
  end;
end;

procedure TMsgDlgFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TMsgDlgFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
{
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
}  
end;

procedure TMsgDlgFrm.ElPopupButton1Click(Sender: TObject);
begin
  if locDetailInfo.Visible then
  begin
    locDetailInfo.Visible:=False;
    self.Height:=self.Height-90;
  end
  else
  begin
    locDetailInfo.Visible:=True;
    self.Height:=self.Height+90;
  end;
end;

end.
