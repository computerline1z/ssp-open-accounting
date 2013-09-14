unit FinStardardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,ppTypes,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxLayout,
  ppEndUsr, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCtrls, ppPrnabl, ppCache;

type
  TFinStardardFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryFinStardard: TIBOQuery;
    dsFinStardard: TDataSource;
    qryFinStardardSTANDARD_ID: TIntegerField;
    qryFinStardardSTANDARD_NAME: TWideStringField;
    qryFinStardardSTANDARD_VALUE: TIBOFloatField;
    grdKHSTANDARD_ID: TdxDBGridMaskColumn;
    grdKHSTANDARD_NAME: TdxDBGridMaskColumn;
    grdKHSTANDARD_VALUE: TdxDBGridMaskColumn;
    grdKHSTANDARD_FORMAT: TdxDBGridMaskColumn;
    qryFinStardardTUSO_ID: TWideStringField;
    qryFinStardardMAUSO_ID: TWideStringField;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    qryBCDKT: TIBOQuery;
    dsBCDKT: TDataSource;
    qryBCDKTID: TSmallintField;
    qryBCDKTMANHOM: TWideStringField;
    qryBCDKTTEN: TWideStringField;
    qryBCDKTMASO: TWideStringField;
    ddpBCD: TdxDBGridLayout;
    grdKHTUSO_ID: TdxDBGridExtLookupColumn;
    grdKHMAUSO_ID: TdxDBGridExtLookupColumn;
    qryFinStardardLOAIKETHOP: TSmallintField;
    grdKHLOAIKETHOP: TdxDBGridImageColumn;
    qryFinStardardLANHOM: TSmallintField;
    grdKHLANHOM: TdxDBGridCheckColumn;
    qryKQHDKD: TIBOQuery;
    dsKQHDKD: TDataSource;
    qryKQHDKDID: TSmallintField;
    qryKQHDKDMASO: TWideStringField;
    qryKQHDKDCHITIEU: TWideStringField;
    ddpBKQ: TdxDBGridLayout;
    grdKHColumn9: TdxDBGridCheckColumn;
    qryFinStardardENABLE_PERCENT: TSmallintField;
    qryFinStardardDONVI: TWideStringField;
    grdKHColumn10: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    qryCTTC: TIBOQuery;
    dsCTTC: TDataSource;
    acModify: TAction;
    acPrint: TAction;
    grdKHColumn11: TdxDBGridColumn;
    qryFinStardardSTANDARD_FORMAT: TWideStringField;
    qryCTTCID: TIntegerField;
    qryCTTCBC_TENCHITIEU: TWideStringField;
    qryCTTCBC_DONVITINH: TWideStringField;
    qryCTTCBC_NAMNAY: TIBOFloatField;
    qryCTTCBC_NAMTRUOC: TIBOFloatField;
    qryCTTCDATAFORMAT: TWideStringField;
    dsnFinStandard: TppDesigner;
    pplFinStandard: TppDBPipeline;
    rptFinStandard: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryBCDKTBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryFinStardardAfterInsert(DataSet: TDataSet);
    procedure qryFinStardardBeforeDelete(DataSet: TDataSet);
    procedure qryFinStardardBeforeEdit(DataSet: TDataSet);
    procedure qryFinStardardBeforeInsert(DataSet: TDataSet);
    procedure qryFinStardardPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure grdKHEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure rptFinStandardBeforePrint;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ElPopupButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acModifyExecute(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure qryFinStardardNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryFinStardardBeforePost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure qryBCDKTBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinStardardFrm: TFinStardardFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TFinStardardFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  qryBCDKT.Open;
  qryKQHDKD.Open;

  {with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_BC_CHITIEUTC(:TUKY,:DENKY)';
    Prepare;

    ParamByName('TUKY').Value := CurYear*12+1;
    ParamByName('DENKY').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;}

  qryFinStardard.Open;
  MainDM.CurObjTypeID:=2;
  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TFinStardardFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TFinStardardFrm.qryFinStardardAfterInsert(DataSet: TDataSet);
begin
  qryFinStardardSTANDARD_ID.FocusControl;
end;

procedure TFinStardardFrm.qryFinStardardBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TFinStardardFrm.qryFinStardardBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TFinStardardFrm.qryFinStardardBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TFinStardardFrm.qryFinStardardPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs := ProcessErr(E,'chỉ tiêu');
  if rs=-803 then
    qryFinStardardSTANDARD_ID.FocusControl;
end;

procedure TFinStardardFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then
end;

procedure TFinStardardFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
end;

procedure TFinStardardFrm.grdKHChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  grdKHLOAIKETHOP.DisableEditor:=qryFinStardardLANHOM.AsInteger=1;
  grdKHMAUSO_ID.DisableEditor:=qryFinStardardLANHOM.AsInteger=1;
  grdKHTUSO_ID.DisableEditor:=qryFinStardardLANHOM.AsInteger=1;
end;

procedure TFinStardardFrm.grdKHEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  if grdKH.FocusedField.FieldName='TUSO_ID' then
  begin
    if (qryFinStardardLOAIKETHOP.AsInteger<=1) then
      grdKHTUSO_ID.DBGridLayout:=ddpBCD
    else
      grdKHTUSO_ID.DBGridLayout:=ddpBKQ;
  end;
  if grdKH.FocusedField.FieldName='MAUSO_ID' then
  begin
    if ((qryFinStardardLOAIKETHOP.AsInteger=0) or (qryFinStardardLOAIKETHOP.AsInteger=2)) then
      grdKHMAUSO_ID.DBGridLayout:=ddpBCD
    else
      grdKHMAUSO_ID.DBGridLayout:=ddpBKQ;
  end;
end;

procedure TFinStardardFrm.rptFinStandardBeforePrint;
var i,id: integer;
    temp: string;
    Cap:WideString;
begin
   for i:=0 to Self.ComponentCount -1 do
   begin
     if (Self.Components[i] is TppLabel ) then
        with (Self.Components[i] as TppLabel) do
        begin
          Cap:=(Self.Components[i] as TppLabel).Caption;
          if Cap='lbl_nambc' then
            (Self.Components[i] as TppLabel).Caption:=IntToStr(CurYear)
          else if (Pos('lbl_DV_',Cap)>0) then
          begin
            temp:=Copy(Cap,7+1,length(Cap)-7);
            id:=StrToInt(temp);
            if (qryCTTC.Locate('ID',id,[])) then
              if qryCTTC.fieldByName('BC_DONVITINH').IsNull then
                (Self.Components[i] as TppLabel).caption:=''
              else
                (Self.Components[i] as TppLabel).Caption:=qryCTTC.fieldByName('BC_DONVITINH').value;
          end
          else if (Pos('lbl_NN_',Cap)>0) then
          begin
            temp:=Copy(Cap,7+1,length(Cap)-7);
            id:=StrToInt(temp);
            if (qryCTTC.Locate('ID',id,[])) then
            begin
              if qryCTTC.fieldByName('BC_NAMNAY').IsNull then
                (Self.Components[i] as TppLabel).caption:=''
              else
              begin
                if qryCTTCDATAFORMAT.IsNull then
                  (Self.Components[i] as TppLabel).Caption:=FormatFloat(CACHESO_FORMAT,double(qryCTTC.fieldByName('BC_NAMNAY').AsFloat))
                else
                  (Self.Components[i] as TppLabel).Caption:=FormatFloat(qryCTTCDATAFORMAT.Value,double(qryCTTC.fieldByName('BC_NAMNAY').AsFloat));
              end;
            end;
          end
          else if (Pos('lbl_NT_',Cap)>0) then
          begin
            temp:=Copy(Cap,7+1,length(Cap)-7);
            id:=StrToInt(temp);
            if (qryCTTC.Locate('ID',id,[])) then
              if qryCTTC.fieldByName('BC_NAMTRUOC').IsNull then
                (Self.Components[i] as TppLabel).caption:=''
              else
              begin
                if qryCTTCDATAFORMAT.IsNull then
                  (Self.Components[i] as TppLabel).Caption:=FormatfLoat(CACHESO_FORMAT,qryCTTC.fieldByName('BC_NAMTRUOC').AsFloat)
                else
                  (Self.Components[i] as TppLabel).Caption:=FormatfLoat(qryCTTCDATAFORMAT.Value,qryCTTC.fieldByName('BC_NAMTRUOC').AsFloat);
              end;
          end;
       end;{with}
   end; {for }
end;

procedure TFinStardardFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCTTC.Close;
end;

procedure TFinStardardFrm.ElPopupButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbRight then acModify.Execute;
end;

procedure TFinStardardFrm.acModifyExecute(Sender: TObject);
begin
  rptFinStandard.Template.FileName:=TemplatePath+'CHITIEUTAICHINH.rtm';

  if not FileExists(rptFinStandard.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;

  Screen.Cursor:=crHourGlass;
  Screen.Cursor := crHourGlass;
  try
    rptFinStandard.Template.LoadFromFile;
  finally
    Screen.Cursor := crDefault;
  end;

  dsnFinStandard.Form.WindowState:=wsMaximized;
  dsnFinStandard.ShowModal;
end;

procedure TFinStardardFrm.ElPopupButton1Click(Sender: TObject);
begin
  if qryCTTC.Active = false then
      qryCTTC.Open;

  rptFinStandard.Template.FileName:=TemplatePath+'CHITIEUTAICHINH.rtm';

  if not FileExists(rptFinStandard.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;

  begin
    Screen.Cursor:=crHourGlass;
    Screen.Cursor := crHourGlass;
    try
      rptFinStandard.Template.LoadFromFile;
    finally
      Screen.Cursor := crDefault;
    end;
    rptFinStandardBeforePrint;//set caption labels
    rptFinStandard.PreviewFormSettings.WindowState:=wsMaximized;
    rptFinStandard.PreviewFormSettings.ZoomPercentage:=100;
    Screen.Cursor:=crDefault;
    //If Not rptFinStandard.PrintReport then
//      ShowMessageUnicode(210);
    try
      rptFinStandard.PrintReport
    except
       ShowMessageUnicode(210);
    end;
    rptFinStandard.CloseDataPipelines;
  end;
  qryCTTC.Close;
end;

procedure TFinStardardFrm.qryFinStardardNewRecord(DataSet: TDataSet);
begin
  qryFinStardardSTANDARD_FORMAT.Value:=CACHESO_FORMAT;
  qryFinStardardSTANDARD_ID.AsInteger:=qryFinStardard.RecNo;
end;

procedure TFinStardardFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TFinStardardFrm.qryFinStardardBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TFinStardardFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TFinStardardFrm.qryBCDKTBeforeOpen(DataSet: TDataSet);
begin
     qryBCDKT.ParamByName('BRANCH_ID').Value := vpBranch_id;
end;

end.
