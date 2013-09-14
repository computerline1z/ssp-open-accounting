unit TinhGTSPForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,
  cxControls, Buttons, ComCtrls,
  TntButtons, IBODataset, TntStdCtrls, TntExtCtrls, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCLabel, ElLabel, ElCaption, ElPanel,
  ElGroupBox, ElCheckItemGrp;

type
  TTinhGTSPFrm = class(TForm)
    ActionList1: TActionList;
    acKCNVLDD: TAction;
    acDieuchinhPNK: TAction;
    acDieuchinhPXK: TAction;
    acKCDongiaKH: TAction;
    acKCDMNC: TAction;
    acKCDMNVL: TAction;
    acDelete: TAction;
    acCalNVLDD: TAction;
    acThuchien: TAction;
    acPhanboCPNC: TAction;
    acTinhTPNhapKho: TAction;
    acPhanboCPNVL: TAction;
    acPhanboCPSXC: TAction;
    acCacphieunhapDC: TAction;
    acCacphieuxuatDC: TAction;
    acFrmProducts: TAction;
    acFrmNVLDD: TAction;
    acFrmDMNC: TAction;
    acFrmDMNVL: TAction;
    acFrmGTKH: TAction;
    acKhauhao: TAction;
    qryPXSX: TIBOQuery;
    Image1: TImage;
    btnOK: TELPopupButton;
    TntBitBtn2: TELPopupButton;
    LblThanhpham: TELLabel;
    LblPXSX: TELLabel;
    LblNVLDD: TELLabel;
    LblPNKDC: TELLabel;
    LblDMNVL: TELLabel;
    LblDMNC: TELLabel;
    LblThanhphamPX: TELLabel;
    LblDMCPSXC: TELLabel;
    LblPXKDC: TELLabel;
    TntBevel1: TBevel;
    APnl_1: TPanel;
    chkKhauhao: TdxCheckEdit;
    chkShowGTSP: TdxCheckEdit;
    ProgressBar1: TProgressBar;
    acDSBTPBKH: TAction;
    acFrmDMCPSXC: TAction;
    TntSpeedButton1: TELPopupButton;
    TntSpeedButton2: TELPopupButton;
    qryPXSXOBJECT_ID: TWideStringField;
    ElFormCaption1: TElFormCaption;
    ackCDMSXC: TAction;
    chkKCDMNC: TdxCheckEdit;
    chkKCDMNVL: TdxCheckEdit;
    chkKCDMSXC: TdxCheckEdit;
    chkKCGTKH: TdxCheckEdit;
    acKCChiphi: TAction;
    rgLoaiDCPN: TElRadioGroup;
    rgLoaiDCPX: TElRadioGroup;
    AcTinhChiPhiNCSXC: TAction;
    ChkPBHetCPNC: TdxCheckEdit;
    ChkPBHetCPNVL: TdxCheckEdit;
    ChkPBHetCPSXC: TdxCheckEdit;
    dxCheckEdit1: TdxCheckEdit;
    LblDMCPDDDK: TElLabel;
    acPhanboCPDDDK: TAction;
    procedure acKCNVLDDExecute(Sender: TObject);
    procedure acKCDongiaKHExecute(Sender: TObject);
    procedure acDieuchinhPNKExecute(Sender: TObject);
    procedure acDieuchinhPXKExecute(Sender: TObject);
    procedure acKCDMNCExecute(Sender: TObject);
    procedure acKCDMNVLExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acCalNVLDDExecute(Sender: TObject);
    procedure acThuchienExecute(Sender: TObject);
    procedure acPhanboCPNCExecute(Sender: TObject);
    procedure acTinhTPNhapKhoExecute(Sender: TObject);
    procedure acPhanboCPNVLExecute(Sender: TObject);
    procedure acPhanboCPSXCExecute(Sender: TObject);
    procedure btnThuchienClick(Sender: TObject);
    procedure acCacphieunhapDCExecute(Sender: TObject);
    procedure acCacphieuxuatDCExecute(Sender: TObject);
    procedure acFrmProductsExecute(Sender: TObject);
    procedure acFrmNVLDDExecute(Sender: TObject);
    procedure acFrmDMNCExecute(Sender: TObject);
    procedure acFrmDMNVLExecute(Sender: TObject);
    procedure acFrmGTKHExecute(Sender: TObject);
    procedure acKhauhaoExecute(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acDSBTPBKHExecute(Sender: TObject);
    procedure LblThanhphamClick(Sender: TObject);
    procedure LblNVLDDClick(Sender: TObject);
    procedure LblPXSXClick(Sender: TObject);
    procedure LblDMNCClick(Sender: TObject);
    procedure LblDMNVLClick(Sender: TObject);
    procedure acFrmDMCPSXCExecute(Sender: TObject);
    procedure LblDMCPSXCClick(Sender: TObject);
    procedure LblThanhphamPXClick(Sender: TObject);
    procedure LblPNKDCClick(Sender: TObject);
    procedure LblPXKDCClick(Sender: TObject);
    procedure LblKCDMNCClick(Sender: TObject);
    procedure LblKCDMNVLClick(Sender: TObject);
    procedure LblKCDMCPSXCClick(Sender: TObject);
    procedure LblKCGTKHClick(Sender: TObject);
    procedure ackCDMSXCExecute(Sender: TObject);
    procedure acKCChiphiExecute(Sender: TObject);
    procedure AcTinhChiPhiNCSXCExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acPhanboCPDDDKExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TinhGTSPFrm: TTinhGTSPFrm;

implementation

uses MainDataMdl, DMInterface,
  GlobalUnit, DocListForm, ProductInfoForm, LabourNormForm,
  MaterialUnfinishForm, MaterialNormForm, PlanPriceForm, ObjectForm,
  OtherNormForm, DateUtils, htmlhlp;

{$R *.dfm}

procedure TTinhGTSPFrm.acKCNVLDDExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENNVLDD(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
  end;
end;

procedure TTinhGTSPFrm.acKCDongiaKHExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_GIAKEHOACH(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value :=vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acDieuchinhPNKExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    if rgLoaiDCPN.ItemIndex=0 then
      SQL.Text :='execute procedure SP_KC_DIEUCHINHNHAPKHO(:KYHT, :MAPX, :NGAYLAP, :NGUOILAP,:BRANCH_ID)'
    else
      SQL.Text :='execute procedure SP_KC_DCNHAPKHO(:KYHT, :MAPX, :NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('MAPX').Value := qryPXSXOBJECT_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id ;
    if rgLoaiDCPN.ItemIndex=0 then
      ParamByName('NGAYLAP').AsDate := WorkingDate;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acDieuchinhPXKExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    if rgLoaiDCPX.ItemIndex=0 then
      SQL.Text :='execute procedure SP_KC_DIEUCHINHXUATKHO(:KYHT,:MAPX, :NGAYLAP, :NGUOILAP,:BRANCH_ID)'
    else
      SQL.Text :='execute procedure SP_KC_DCXUATKHO(:KYHT,:MAPX, :NGUOILAP,:BRANCH_ID)';

    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('MAPX').Value := qryPXSXOBJECT_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    if rgLoaiDCPX.ItemIndex=0 then
      ParamByName('NGAYLAP').AsDate := WorkingDate;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acKCDMNCExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_DINHMUCNC(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acKCDMNVLExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_DINHMUCNVL(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acDeleteExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='delete from documents where ((doctype_id=60) or (doctype_id=20) or (doc_id starting with ''sysPN'') or (doc_id starting with ''sysPX'')) and period_id=:KYHT AND BRANCH_ID=:BRANCH_ID';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acCalNVLDDExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_kc_tinhnvlxuatdung(:KYHT,:MAPX,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('MAPX').Value := qryPXSXOBJECT_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acThuchienExecute(Sender: TObject);
begin
  if SSPUserRight[5].ER=False then
  begin
    ShowMessageUnicode(111);
    exit;
  end;
  Screen.Cursor := crHourGlass;

  ProgressBar1.Visible:=True;
  qryPXSX.Open;
  qryPXSX.First;
  ProgressBar1.Max:=qryPXSX.RecordCount+5;
  //acDelete.Execute; Neu de nguyen dong lenh nay thi phai lam them thao tac Phan bo lai moi duoc

  acTinhTPNhapKho.Execute; //sp_kc_insertthanhpham(:KYHT,:BRANCH_ID)
  ProgressBar1.StepIt;

  if chkKhauhao.Checked then
  begin
    acKhauhao.Execute; //SP_KC_TRICHKHAUHAO
    chkKhauhao.ReadOnly:=True;
  end;

  AcTinhChiPhiNCSXC.Execute;//SP_KC_TINHCPNHANCONG(:KYHT,:BRANCH_ID)

  ProgressBar1.StepIt;
  while not qryPXSX.Eof do
  begin
    acCalNVLDD.Execute;//sp_kc_tinhnvlxuatdung(:KYHT,:MAPX,:BRANCH_ID)



    acPhanboCPNVL.Execute;//sp_kc_phanbocpnvl(:kyht,:MAPX,1,:BRANCH_ID)
    acPhanboCPNC.Execute;//sp_kc_phanbocpnc(:KYHT,:MAPX,1,:BRANCH_ID)
    acPhanboCPSXC.Execute; //sp_kc_phanbocpsxc(:kyht,:MAPX,0,:BRANCH_ID)
    acPhanboCPDDDK.Execute;

    acDieuchinhPNK.Execute;

    acDieuchinhPXK.Execute;

    qryPXSX.Next;
    ProgressBar1.StepIt;
  end;
  qryPXSX.Close;
  if chkKCDMNC.Checked then
    acKCDMNC.Execute;

  if chkKCDMNVL.Checked then
    acKCDMNVL.Execute;
  ProgressBar1.StepIt;
  if chkKCDMSXC.Checked then
    ackCDMSXC.Execute;

  if chkKCGTKH.Checked then
    acKCDongiaKH.Execute;
  ProgressBar1.StepIt;

  acKCNVLDD.Execute;
  ProgressBar1.StepIt;
  acKCChiphi.Execute;
  ProgressBar1.StepIt;

  Screen.Cursor := crDefault;
  chkShowGTSP.ReadOnly:=True;
  ProgressBar1.Visible:=False;
end;

procedure TTinhGTSPFrm.acPhanboCPNCExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    if ChkPBHetCPNC.Checked then
      SQL.Text :='execute procedure sp_kc_phanbocpnc(:KYHT,:MAPX,1,:BRANCH_ID)'
    else
      SQL.Text :='execute procedure sp_kc_phanbocpnc(:KYHT,:MAPX,0,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('MAPX').Value := qryPXSXOBJECT_ID.Value;
    ParamByName('BRANCH_ID').Value :=vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acTinhTPNhapKhoExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_kc_insertthanhpham(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value :=vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acPhanboCPNVLExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    if ChkPBHetCPNVL.Checked then
      SQL.Text :='execute procedure sp_kc_phanbocpnvl(:kyht,:MAPX,1,:BRANCH_ID)'
    else
      SQL.Text :='execute procedure sp_kc_phanbocpnvl(:kyht,:MAPX,0,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('MAPX').Value := qryPXSXOBJECT_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acPhanboCPSXCExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    if ChkPBHetCPSXC.Checked then
      SQL.Text :='execute procedure sp_kc_phanbocpsxc(:kyht,:MAPX,1,:BRANCH_ID)'
    else
      SQL.Text :='execute procedure sp_kc_phanbocpsxc(:kyht,:MAPX,0,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('MAPX').Value := qryPXSXOBJECT_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id;

    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.btnThuchienClick(Sender: TObject);
begin
  if ShowMessageUnicode(112,'', 4)=7 then exit;

  acThuchien.Execute;
end;

procedure TTinhGTSPFrm.acCacphieunhapDCExecute(Sender: TObject);
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text := sqlSelectDocList + 'where DOC_ID starting with ''sysPN_''';
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
    qryDocListAnyWhere.Open;
  end;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.Caption:=UTF8Decode('Các phiếu nhập kho điều chỉnh giá kế hoạch');
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
end;

procedure TTinhGTSPFrm.acCacphieuxuatDCExecute(Sender: TObject);
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text := sqlSelectDocList + 'where DOC_ID starting with ''sysPX_''';
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
    qryDocListAnyWhere.Open;
  end;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.Caption:=UTF8Decode('Các phiếu xuất kho điều chỉnh giá bình quân theo giá nhập kế hoạch');
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
end;

procedure TTinhGTSPFrm.acFrmProductsExecute(Sender: TObject);
begin
  with TProductInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTinhGTSPFrm.acFrmNVLDDExecute(Sender: TObject);
begin
  with TMaterialUnfinishFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTinhGTSPFrm.acFrmDMNCExecute(Sender: TObject);
begin
  with TLabourFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTinhGTSPFrm.acFrmDMNVLExecute(Sender: TObject);
begin
  with TMaterialNormFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTinhGTSPFrm.acFrmGTKHExecute(Sender: TObject);
begin
  with TPlanPriceFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTinhGTSPFrm.acKhauhaoExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_TRICHKHAUHAO(:KYHT, :NGAYLAP,:NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value:= CurrentPeriod;
    ParamByName('NGAYLAP').AsDate:= WorkingDate;
    ParamByName('BRANCH_ID').Value:=vpBranch_id; 
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.btnHelpClick(Sender: TObject);
begin
  Application.HelpContext(12);
end;

procedure TTinhGTSPFrm.btnOKClick(Sender: TObject);
begin
  if ShowMessageUnicode(112,'', 4)=7 then
    exit;

  acThuchien.Execute;
  if chkShowGTSP.Checked then
    acFrmProducts.Execute;
  btnOK.Enabled:=False;
end;

procedure TTinhGTSPFrm.acDSBTPBKHExecute(Sender: TObject);
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text := sqlSelectDocList + 'where DOCTYPE_ID=10';
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
    qryDocListAnyWhere.Open;

    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      ShowMessageUnicode(113);
      Exit;
    end;
  end;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.Caption:=UTF8Decode('Các bút toán phân bổ khấu hao tài sản tự động');
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
end;

procedure TTinhGTSPFrm.LblThanhphamClick(Sender: TObject);
begin
  acFrmProducts.Execute;
end;

procedure TTinhGTSPFrm.LblNVLDDClick(Sender: TObject);
begin
  acFrmNVLDD.Execute;
end;

procedure TTinhGTSPFrm.LblPXSXClick(Sender: TObject);
begin
  MainDM.CurObjTypeID := 6;
  LastViewItemID:='';
  with TObjectFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTinhGTSPFrm.LblDMNCClick(Sender: TObject);
begin
  acFrmDMNC.Execute;
end;

procedure TTinhGTSPFrm.LblDMNVLClick(Sender: TObject);
begin
  acFrmDMNVL.Execute;
end;

procedure TTinhGTSPFrm.acFrmDMCPSXCExecute(Sender: TObject);
begin
  with TOtherNormFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTinhGTSPFrm.LblDMCPSXCClick(Sender: TObject);
begin
  acFrmDMCPSXC.Execute;
end;

procedure TTinhGTSPFrm.LblThanhphamPXClick(Sender: TObject);
begin
  acFrmProducts.Execute;
end;

procedure TTinhGTSPFrm.LblPNKDCClick(Sender: TObject);
begin
  acCacphieunhapDC.Execute;
end;

procedure TTinhGTSPFrm.LblPXKDCClick(Sender: TObject);
begin
  acCacphieuxuatDC.Execute;
end;

procedure TTinhGTSPFrm.LblKCDMNCClick(Sender: TObject);
begin
  acFrmDMNC.Execute;
end;

procedure TTinhGTSPFrm.LblKCDMNVLClick(Sender: TObject);
begin
  acFrmDMNVL.Execute;
end;

procedure TTinhGTSPFrm.LblKCDMCPSXCClick(Sender: TObject);
begin
  acFrmDMCPSXC.Execute;
end;

procedure TTinhGTSPFrm.LblKCGTKHClick(Sender: TObject);
begin
  acFrmGTKH.Execute;
end;

procedure TTinhGTSPFrm.ackCDMSXCExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_DINHMUCSXC(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.acKCChiphiExecute(Sender: TObject);
begin
    with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYEN_CPGT(:KYHT,:NGAYLAP,:NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate := WorkingDate;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.AcTinhChiPhiNCSXCExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_TINHCPNHANCONG(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_TINHCPSANXUAT(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
end;

procedure TTinhGTSPFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TTinhGTSPFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  rgLoaiDCPN.Items[0]:=Utf8Decode('Điều chỉnh bằng các phiếu khác');
  rgLoaiDCPN.Items[1]:=Utf8Decode('Điều chỉnh trên những phiếu cũ');
  rgLoaiDCPX.Items[0]:=Utf8Decode('Điều chỉnh bằng các phiếu khác');
  rgLoaiDCPX.Items[1]:=Utf8Decode('Điều chỉnh trên những phiếu cũ');
end;


procedure TTinhGTSPFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TTinhGTSPFrm.acPhanboCPDDDKExecute(Sender: TObject);
begin
 with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_ESTIMATE_UNF_PRO(:KYHT,:MAPX,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('MAPX').Value := qryPXSXOBJECT_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id;

    ExecSQL;
    Close;
  end;
end;

end.
