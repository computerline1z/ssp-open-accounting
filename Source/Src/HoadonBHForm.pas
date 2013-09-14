unit HoadonBHForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib, dxLayoutLookAndFeels;

type
  THoadonBHFrm = class(TForm)
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
    dedtDenngay: TdxDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dedtTungay: TdxDateEdit;
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
  HoadonBHFrm: THoadonBHFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB, PolicyForm, DateUtils;

{$R *.dfm}

procedure THoadonBHFrm.btnOKClick(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_POLICY_INPUT_INV(:TUNGAY,:DENNGAY,:SERI,:SOHD,:NGAYHD,:LOAI)';
    Prepare;

    ParamByName('TUNGAY').Value := dedtTungay.Date;
    ParamByName('DENNGAY').Value := dedtDenngay.Date;
    ParamByName('SERI').Value := edtSeri.Text;
    ParamByName('SOHD').Value := edtHoadon.Text;
    ParamByName('NGAYHD').AsDate :=  dedtNgayHD.Date;
    ParamByName('LOAI').Value :=  PolicyFlagChar;
    ExecSQL;
    Close;
  end;

  ModalResult:=mrOk;
end;

procedure THoadonBHFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure THoadonBHFrm.FormShow(Sender: TObject);
begin
  dedtNgayHD.Date:=WorkingDate;
  dedtTungay.Date:=StartOfTheMonth(WorkingDate);
  dedtDenngay.Date:=EndOfTheMonth(WorkingDate);
  SetVisible(Self);
end;

end.
