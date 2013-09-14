unit ReportTHCondForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  dxDBTLCl, dxGrClms, dxGrClEx, ElCLabel, ElLabel, ElPanel;

type
  TReportTHCondFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryLCTTCond: TIBOQuery;
    dsLCTTCond: TDataSource;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    dxDBGrid1GHICHU: TdxDBGridColumn;
    dxDBGrid1HESO: TdxDBGridCalcColumn;
    dxDBGrid1DEBIT_OBJ: TdxDBGridPopupColumn;
    dxDBGrid1DEBIT_TYPE: TdxDBGridPopupColumn;
    dxDBGrid1DEBIT_DETAIL: TdxDBGridPopupColumn;
    dxDBGrid1DEBIT_DTYPE: TdxDBGridPopupColumn;
    dxDBGrid1DEBIT_DETAIL_1: TdxDBGridPopupColumn;
    dxDBGrid1DEBIT_DTYPE_1: TdxDBGridPopupColumn;
    dxDBGrid1CREDIT_TYPE: TdxDBGridPopupColumn;
    dxDBGrid1CREDIT_DETAIL: TdxDBGridPopupColumn;
    dxDBGrid1CREDIT_DTYPE: TdxDBGridPopupColumn;
    dxDBGrid1CREDIT_DETAIL_1: TdxDBGridPopupColumn;
    dxDBGrid1CREDIT_DTYPE_1: TdxDBGridPopupColumn;
    qryObjectList: TIBOQuery;
    dsObjectList: TDataSource;
    qryObjectListOBJECT_ID: TWideStringField;
    qryObjectListOTYPE_ID: TSmallintField;
    qryObjectListOBJECT_NAME: TWideStringField;
    qryObjectListOBJGRP_ID: TWideStringField;
    qryObjectListOBJGRP_NAME: TWideStringField;
    qryObjectListSHORT_NAME: TWideStringField;
    dxDBGrid1CREDIT_OBJ: TdxDBGridPopupColumn;
    qryLCTTCondID: TSmallintField;
    qryLCTTCondTKNOBDV: TWideStringField;
    qryLCTTCondTKCOBDV: TWideStringField;
    qryLCTTCondKF: TWideStringField;
    qryLCTTCondGHICHU: TWideStringField;
    qryLCTTCondHESO: TIBOFloatField;
    qryLCTTCondDEBIT_OBJ: TWideStringField;
    qryLCTTCondDEBIT_TYPE: TSmallintField;
    qryLCTTCondDEBIT_DETAIL: TWideStringField;
    qryLCTTCondDEBIT_DTYPE: TSmallintField;
    qryLCTTCondDEBIT_DETAIL_1: TWideStringField;
    qryLCTTCondDEBIT_DTYPE_1: TSmallintField;
    qryLCTTCondCREDIT_OBJ: TWideStringField;
    qryLCTTCondCREDIT_TYPE: TSmallintField;
    qryLCTTCondCREDIT_DETAIL: TWideStringField;
    qryLCTTCondCREDIT_DTYPE: TSmallintField;
    qryLCTTCondCREDIT_DETAIL_1: TWideStringField;
    qryLCTTCondCREDIT_DTYPE_1: TSmallintField;
    qryLCTTCondSTT: TIntegerField;
    dxDBGrid1TKNOBDV: TdxDBGridPopupColumn;
    dxDBGrid1TKCOBDV: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryLCTTCondNewRecord(DataSet: TDataSet);
    procedure qryLCTTCondAfterInsert(DataSet: TDataSet);
    procedure qryLCTTCondBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryLCTTCondPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryLCTTCondDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryLCTTCondBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1DEBIT_OBJCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1DEBIT_DETAILCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1DEBIT_DETAIL_1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1CREDIT_OBJCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1CREDIT_DETAILCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1CREDIT_DETAIL_1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1DEBIT_OBJPopup(Sender: TObject;
      const EditText: WideString);
    procedure dxDBGrid1Editing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dxDBGrid1CREDIT_OBJPopup(Sender: TObject;
      const EditText: WideString);
    procedure qryLCTTCondTKNOBDVChange(Sender: TField);
    procedure qryLCTTCondTKCOBDVChange(Sender: TField);
    procedure dxDBGrid1TKNOBDVInitPopup(Sender: TObject);
    procedure dxDBGrid1TKNOBDVCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1TKCOBDVInitPopup(Sender: TObject);
    procedure dxDBGrid1TKCOBDVCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
   // procedure dxDBGrid1DEBIT_OBJChange(Sender: TObject);
  //  procedure dxDBGrid1TKNOBDVChange(Sender: TObject);
   // procedure dxDBGrid1TKNOBDVChange(Sender: TObject);
  //  procedure dxDBGrid1TKNOBDVInitPopup(Sender: TObject);
  //  procedure dxDBGrid1TKNOBDVPopup(Sender: TObject;
      //const EditText: WideString);
  private
    { Private declarations }
  public
    ID : Smallint;
    { Public declarations }
  end;

var
  ReportTHCondFrm: TReportTHCondFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, HtmlHlp,PopupForm;


{$R *.dfm}

procedure TReportTHCondFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);


  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;

  qryObjectList.Open;
  PopupFrm.grdobjectlist.DataSource := dsObjectList;
end;

procedure TReportTHCondFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryLCTTCond do
  begin
    if State in [dsInsert,dsEdit] then
      Post;

    Close;
  end;
end;

procedure TReportTHCondFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TReportTHCondFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TReportTHCondFrm.qryLCTTCondNewRecord(DataSet: TDataSet);
begin
  qryLCTTCondHESO.AsFloat:=1;
  qryLCTTCondSTT.AsFloat:=0;
  qryLCTTCondID.AsInteger:= ID;
end;

procedure TReportTHCondFrm.qryLCTTCondAfterInsert(DataSet: TDataSet);
begin
  qryLCTTCondTKNOBDV.FocusControl;
end;

procedure TReportTHCondFrm.qryLCTTCondBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryLCTTCondTKNOBDV) then
  begin
    ShowMessageUnicode(67);
    qryLCTTCondTKNOBDV.FocusControl;
    Abort;
    Exit;
  end;
  if IsNotHasData(qryLCTTCondTKCOBDV) then
  begin
    ShowMessageUnicode(67);
    qryLCTTCondTKCOBDV.FocusControl;
    Abort;
    Exit;
  end;
  if IsNotHasData(qryLCTTCondDEBIT_OBJ) then
      qryLCTTCondDEBIT_TYPE.Clear;
  if IsNotHasData(qryLCTTCondDEBIT_DETAIL) then
      qryLCTTCondDEBIT_dTYPE.Clear;
  if IsNotHasData(qryLCTTCondDEBIT_DETAIL_1) then
      qryLCTTCondDEBIT_DTYPE_1.Clear;
  if IsNotHasData(qryLCTTCondcredit_OBJ) then
      qryLCTTCondcredit_TYPE.Clear;
  if IsNotHasData(qryLCTTCondcredit_DETAIL) then
      qryLCTTCondcredit_dTYPE.Clear;
  if IsNotHasData(qryLCTTCondcredit_DETAIL_1) then
      qryLCTTCondcredit_DTYPE_1.Clear;

  if IsHasData(qryLCTTCondDEBIT_OBJ) then
    if not maindm.CheckObject(qryLCTTCondDEBIT_OBJ.Value, qryLCTTCondDEBIT_TYPE.Value) then
    begin
      ShowMessageUnicode(66);
      qryLCTTCondDEBIT_OBJ.FocusControl;
      exit;
    end;
  if IsHasData(qryLCTTCondDEBIT_DETAIL) then
    if not maindm.CheckObject(qryLCTTCondDEBIT_DETAIL.Value, qryLCTTCondDEBIT_dTYPE.Value) then
    begin
      ShowMessageUnicode(66);
      qryLCTTCondDEBIT_DETAIL.FocusControl;
      exit;
    end;
  if IsHasData(qryLCTTCondDEBIT_DETAIL_1) then
    if not maindm.CheckObject(qryLCTTCondDEBIT_DETAIL_1.Value, qryLCTTCondDEBIT_DTYPE_1.Value) then
    begin
      ShowMessageUnicode(66);
      qryLCTTCondDEBIT_DETAIL_1.FocusControl;
      exit;
    end;
  if IsHasData(qryLCTTCondCREDIT_OBJ) then
    if not maindm.CheckObject(qryLCTTCondCREDIT_OBJ.Value, qryLCTTCondCREDIT_TYPE.Value) then
    begin
      ShowMessageUnicode(66);
      qryLCTTCondCREDIT_OBJ.FocusControl;
      exit;
    end;
  if IsHasData(qryLCTTCondcredit_DETAIL) then
    if not maindm.CheckObject(qryLCTTCondcredit_DETAIL.Value, qryLCTTCondcredit_dTYPE.Value) then
    begin
      ShowMessageUnicode(66);
      qryLCTTCondcredit_DETAIL.FocusControl;
      exit;
    end;
  if IsHasData(qryLCTTCondcredit_DETAIL_1) then
    if not maindm.CheckObject(qryLCTTCondcredit_DETAIL_1.Value, qryLCTTCondcredit_DTYPE_1.Value) then
    begin
      ShowMessageUnicode(66);
      qryLCTTCondcredit_DETAIL_1.FocusControl;
      exit;
    end;
end;

procedure TReportTHCondFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
        ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TReportTHCondFrm.qryLCTTCondPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  if ProcessErr(E,'') =-803 then
    qryLCTTCondTKNOBDV.FocusControl;
end;

procedure TReportTHCondFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TReportTHCondFrm.qryLCTTCondDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TReportTHCondFrm.qryLCTTCondBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TReportTHCondFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
  qryLCTTCond.ParamByName('ID').AsInteger:=ID;
  qryLCTTCond.Open;
end;

procedure TReportTHCondFrm.dxDBGrid1DEBIT_OBJCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
{  if Accept then
  begin
    qryLCTTCond.Edit;
    qryLCTTCondDEBIT_OBJ.Value := qryObjectListOBJECT_ID.Value;
    qryLCTTCondDEBIT_TYPE.Value := qryObjectListOTYPE_ID.Value;
    text := qryObjectListOBJECT_ID.Value;
  end;  }
    if Accept then
    Text := vpItemID;

end;

procedure TReportTHCondFrm.dxDBGrid1DEBIT_DETAILCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
{  if Accept then
  begin
    qryLCTTCond.Edit;
    qryLCTTCondDEBIT_DETAIL.Value := qryObjectListOBJECT_ID.Value;
    qryLCTTCondDEBIT_dTYPE.Value := qryObjectListOTYPE_ID.Value;
    text := qryObjectListOBJECT_ID.Value;
  end;  }
    if Accept then
    Text := vpItemID;
end;

procedure TReportTHCondFrm.dxDBGrid1DEBIT_DETAIL_1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
{  if Accept then
  begin
    qryLCTTCond.Edit;
    qryLCTTCondDEBIT_DETAIL_1.Value := qryObjectListOBJECT_ID.Value;
    qryLCTTCondDEBIT_DTYPE_1.Value := qryObjectListOTYPE_ID.Value;
    text := qryObjectListOBJECT_ID.Value;
  end;}
    if Accept then
    Text := vpItemID;
end;
procedure TReportTHCondFrm.dxDBGrid1CREDIT_OBJCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
{  if Accept then
  begin
    qryLCTTCond.Edit;
    qryLCTTCondCREDIT_OBJ.Value := qryObjectListOBJECT_ID.Value;
    qryLCTTCondCREDIT_TYPE.Value := qryObjectListOTYPE_ID.Value;
    text := qryObjectListOBJECT_ID.Value;
  end;}
    if Accept then
    Text := vpItemID;
end;


procedure TReportTHCondFrm.dxDBGrid1CREDIT_DETAILCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
{  if Accept then
  begin
    qryLCTTCond.Edit;
    qryLCTTCondCREDIT_DETAIL.Value := qryObjectListOBJECT_ID.Value;
    qryLCTTCondCREDIT_dTYPE.Value := qryObjectListOTYPE_ID.Value;
    text := qryObjectListOBJECT_ID.Value;
  end; }
    if Accept then
    Text := vpItemID;
end;

procedure TReportTHCondFrm.dxDBGrid1CREDIT_DETAIL_1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
{  if Accept then
  begin
    qryLCTTCond.Edit;
    qryLCTTCondCREDIT_DETAIL_1.Value := qryObjectListOBJECT_ID.Value;
    qryLCTTCondCREDIT_DTYPE_1.Value := qryObjectListOTYPE_ID.Value;
    text := qryObjectListOBJECT_ID.Value;
  end;}
    if Accept then
    Text := vpItemID;
end;

procedure TReportTHCondFrm.dxDBGrid1DEBIT_OBJPopup(Sender: TObject;
  const EditText: WideString);
begin
  if qryLCTTCondDEBIT_OBJ.IsNull then
    begin
      MainDM.CurObjTypeID := qryLCTTCondDEBIT_TYPE.AsInteger;
      exit;
    end;
  with MainDM do
    begin
      CurObjTypeID := qryLCTTCondDEBIT_TYPE.AsInteger;
      if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
        begin
          qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
          qryPComObj.Filtered := True;

          PreObjTypeID := MainDM.CurObjTypeID;
        end;
      PopupFrm.grdCommonObj.DataSource.DataSet.Open;

      if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value
        <> qryLCTTCondDEBIT_OBJ.Value) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID',
          qryLCTTCondDEBIT_OBJ.value, []);
    end;
end;

procedure TReportTHCondFrm.dxDBGrid1Editing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
if dxDBGrid1.FocusedField.FieldName = 'DEBIT_OBJ' then
    begin
        with MainDM do
        begin
            if not qryLCTTCondTKNOBDV.IsNull then
                begin
                    qryPAcc.Open;
                    qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKNOBDV.Value, []);
                end;

            if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
                begin
                    qryLCTTCond.Edit;
                    qryLCTTCondDEBIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
                end;
         end;
      if qryLCTTCondDEBIT_TYPE.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryLCTTCondDEBIT_TYPE.AsInteger;
    end

  else
    if dxDBGrid1.FocusedField.FieldName = 'DEBIT_DETAIL' then
    begin
    with MainDM do
        begin
            if not qryLCTTCondTKNOBDV.IsNull then
                begin
                    qryPAcc.Open;
                    qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKNOBDV.Value, []);
                end;

            if MainDM.qryPAccDTYPE_ID.AsInteger <> 0 then
                begin
                    qryLCTTCond.Edit;
                    qryLCTTCondDEBIT_DTYPE.AsInteger := MainDM.qryPAccDTYPE_ID.AsInteger;
                end;
         end;
      if qryLCTTCondDEBIT_DTYPE.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryLCTTCondDEBIT_DTYPE.AsInteger;
    end

  else
    if dxDBGrid1.FocusedField.FieldName = 'DEBIT_DETAIL_1' then
    begin
    with MainDM do
        begin
            if not qryLCTTCondTKNOBDV.IsNull then
                begin
                    qryPAcc.Open;
                    qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKNOBDV.Value, []);
                end;

            if MainDM.qryPAccDTYPE_ID_1.AsInteger <> 0 then
                begin
                    qryLCTTCond.Edit;
                    qryLCTTCondDEBIT_DTYPE_1.AsInteger := MainDM.qryPAccDTYPE_ID_1.AsInteger;
                end;
         end;
      if qryLCTTCondDEBIT_DETAIL_1.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryLCTTCondDEBIT_DTYPE_1.AsInteger;
    end;

 if dxDBGrid1.FocusedField.FieldName = 'CREDIT_OBJ' then
    begin
        with MainDM do
        begin
          if not qryLCTTCondTKCOBDV.IsNull then
              begin
                  qryPAcc.Open;
                  qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKCOBDV.Value, []);
              end;

          if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
              begin
                  qryLCTTCond.Edit;
                  qryLCTTCondCREDIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
              end;
         end;
      if qryLCTTCondCREDIT_TYPE.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryLCTTCondCREDIT_TYPE.AsInteger;
    end

  else
    if dxDBGrid1.FocusedField.FieldName = 'CREDIT_DETAIL' then
    begin
    with MainDM do
        begin
          if not qryLCTTCondTKCOBDV.IsNull then
              begin
                  qryPAcc.Open;
                  qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKCOBDV.Value, []);
              end;

           if MainDM.qryPAccDTYPE_ID.AsInteger <> 0 then
              begin
                  qryLCTTCond.Edit;
                  qryLCTTCondCREDIT_DTYPE.AsInteger := MainDM.qryPAccDTYPE_ID.AsInteger;
              end;
         end;

      if qryLCTTCondCREDIT_DTYPE.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryLCTTCondCREDIT_DTYPE.AsInteger;
    end
  else

    if dxDBGrid1.FocusedField.FieldName = 'CREDIT_DETAIL_1' then
    begin
    with MainDM do
        begin
          if not qryLCTTCondTKCOBDV.IsNull then
              begin
                  qryPAcc.Open;
                  qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKCOBDV.Value, []);
              end;

           if MainDM.qryPAccDTYPE_ID_1.AsInteger <> 0 then
              begin
                  qryLCTTCond.Edit;
                  qryLCTTCondCREDIT_DTYPE_1.AsInteger := MainDM.qryPAccDTYPE_ID_1.AsInteger;
              end;
         end;

      if qryLCTTCondDEBIT_DETAIL_1.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryLCTTCondCREDIT_DTYPE_1.AsInteger;
    end;


  if dxDBGrid1.FocusedField.FieldName = 'TKNOBDV' then  //TKNOBDV
  begin
    with MainDM do
    begin
    if not qryLCTTCondTKNOBDV.IsNull then
      begin
        qryPAcc.Open;
        qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKNOBDV.Value, []);
      end;

      if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondDEBIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondDEBIT_DTYPE.AsInteger := MainDM.qryPAccDTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID_1.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondDEBIT_DTYPE_1.AsInteger := MainDM.qryPAccDTYPE_ID_1.AsInteger;
      end;
    end;
  end;
  if dxDBGrid1.FocusedField.FieldName = 'TKCOBDV' then
  begin
    with MainDM do
    if not qryLCTTCondTKCOBDV.IsNull then
      begin
        qryPAcc.Open;
        qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKCOBDV.Value, []);
      end;

      if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondCREDIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondCREDIT_DTYPE.AsInteger := MainDM.qryPAccDTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID_1.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondCREDIT_DTYPE_1.AsInteger := MainDM.qryPAccDTYPE_ID_1.AsInteger;
      end;
  end;
 end;
procedure TReportTHCondFrm.dxDBGrid1CREDIT_OBJPopup(Sender: TObject;
  const EditText: WideString);
begin
if qryLCTTCondCREDIT_OBJ.IsNull then
    begin
      MainDM.CurObjTypeID := qryLCTTCondCREDIT_TYPE.AsInteger;
      exit;
    end;
  with MainDM do
    begin
      CurObjTypeID := qryLCTTCondCREDIT_TYPE.AsInteger;
      if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
        begin
          qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
          qryPComObj.Filtered := True;

          PreObjTypeID := MainDM.CurObjTypeID;
        end;
      PopupFrm.grdCommonObj.DataSource.DataSet.Open;

      if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value
        <> qryLCTTCondCREDIT_OBJ.Value) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID',
          qryLCTTCondCREDIT_OBJ.value, []);
    end;
end;

procedure TReportTHCondFrm.qryLCTTCondTKNOBDVChange(Sender: TField);
begin
//if dxDBGrid1.FocusedField.FieldName = 'TKNOBDV' then  //TKNOBDV
//  begin
    with MainDM do
    if not qryLCTTCondTKNOBDV.IsNull then
      begin
        qryPAcc.Open;
        qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKNOBDV.Value, []);
      end;

      if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondDEBIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondDEBIT_DTYPE.AsInteger := MainDM.qryPAccDTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID_1.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondDEBIT_DTYPE_1.AsInteger := MainDM.qryPAccDTYPE_ID_1.AsInteger;
      end;
//  end;
end;

procedure TReportTHCondFrm.qryLCTTCondTKCOBDVChange(Sender: TField);
begin
  if dxDBGrid1.FocusedField.FieldName = 'TKCOBDV' then
  begin
    with MainDM do
    if not qryLCTTCondTKCOBDV.IsNull then
      begin
        qryPAcc.Open;
        qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKCOBDV.Value, []);
      end;

      if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondCREDIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondCREDIT_DTYPE.AsInteger := MainDM.qryPAccDTYPE_ID.AsInteger;
      end;
      if MainDM.qryPAccDTYPE_ID_1.AsInteger <> 0 then
      begin
          qryLCTTCond.Edit;
          qryLCTTCondCREDIT_DTYPE_1.AsInteger := MainDM.qryPAccDTYPE_ID_1.AsInteger;
      end;
  end;
end;

procedure TReportTHCondFrm.dxDBGrid1TKNOBDVInitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenNORecord;
  MainDM.qryPAcc.Filtered := True;

  with MainDM do
    if not qryLCTTCondTKNOBDV.IsNull then
    begin
      qryPAcc.Open;
      qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKNOBDV.Value, []);
    end;
end;

procedure TReportTHCondFrm.dxDBGrid1TKNOBDVCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
 if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TReportTHCondFrm.dxDBGrid1TKCOBDVInitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenCORecord;
  MainDM.qryPAcc.Filtered := True;

  with MainDM do
    if not qryLCTTCondTKCOBDV.IsNull then
    begin
      qryPAcc.Open;
      qryPAcc.Locate('ACCOUNT_ID', qryLCTTCondTKCOBDV.Value, []);
    end;
end;

procedure TReportTHCondFrm.dxDBGrid1TKCOBDVCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
 if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

end.
