unit ThayTheHDBHForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib, dxLayoutLookAndFeels;

type
  TThayTheHDBHFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    edtHoadon: TdxEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtSeri: TdxEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dedtNgayHD: TdxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edtOldSeri: TdxEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    edtOldHD: TdxEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  ThayTheHDBHFrm: TThayTheHDBHFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB, PolicyForm;

{$R *.dfm}

procedure TThayTheHDBHFrm.btnOKClick(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_REPLACE_INVOICE(:SERICU,:SOHDCU,:SERIMOI,:SOHDMOI,:NGAYMOI,:LOAI)';
    Prepare;

    ParamByName('SERICU').Value := edtOldSeri.Text;
    ParamByName('SOHDCU').Value := edtOldHD.Text;
    ParamByName('SERIMOI').Value := edtSeri.Text;
    ParamByName('SOHDMOI').Value := edtHoadon.Text;
    if dedtNgayHD.Text<>'  /  /    ' then
      ParamByName('NGAYMOI').AsDate :=  dedtNgayHD.Date;
    ParamByName('LOAI').Value :=  PolicyFlagChar;
    ExecSQL;
    Close;
  end;

  ModalResult:=mrOk;
end;

procedure TThayTheHDBHFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThayTheHDBHFrm.FormShow(Sender: TObject);
begin
  dedtNgayHD.Date:=WorkingDate;
  SetVisible(Self);
end;

end.
