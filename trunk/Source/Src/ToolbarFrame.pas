unit ToolbarFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxLayoutControl, StdCtrls, cxControls, DBActns, ActnList,
  dxLayoutLookAndFeels, ImgList, IBODataset, DB, ExtCtrls, DBCtrls,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, Variants, dxTL, dxInspct;

type
  THackTreeList = class(TCustomdxTreeList);
  TframeToolbar = class(TFrame)
    ActionList1: TActionList;
    acDSInsert: TDataSetInsert;
    acDSPost: TDataSetPost;
    acDSCancel: TDataSetCancel;
    acClose: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    acHelp: TAction;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    StyleToolBar: TdxLayoutWebLookAndFeel;
    acChoose: TAction;
    acOpen: TAction;
    acDSDelete: TDataSetDelete;
    acDSRefresh: TDataSetRefresh;
    btnDelete: TElPopupButton;
    dxlctrlDelete: TdxLayoutItem;
    btnInsert: TElPopupButton;
    dxlctrlInsert: TdxLayoutItem;
    btnSave: TElPopupButton;
    dxlctrlSave: TdxLayoutItem;
    btnCancel: TElPopupButton;
    dxlctrlCancel: TdxLayoutItem;
    btnClose: TElPopupButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    btnHelp: TElPopupButton;
    dxlctrlHelp: TdxLayoutItem;
    btnChoose: TElPopupButton;
    dxlctrlChoose: TdxLayoutItem;
    btnCopy: TElPopupButton;
    dxlctrlInsertCopy: TdxLayoutItem;
    acPrint: TAction;
    acDesign: TAction;
    acPreview: TAction;
    acSendmail: TAction;
    btnFirst: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnLast: TElPopupButton;
    btnNext: TElPopupButton;
    btnPrevious: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    btnDesign: TElPopupButton;
    btnPrint: TElPopupButton;
    btnPreview: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    acDSFirst: TDataSetFirst;
    acDSPrior: TDataSetPrior;
    acDSNext: TDataSetNext;
    acDSLast: TDataSetLast;
    acDSInsertCopy: TDataSetInsert;
    btnInsertEx: TElPopupButton;
    dxlctrlInsertChild: TdxLayoutItem;
    acDSInsertChild: TDataSetInsert;
    btnSendMail: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    acView: TAction;
    procedure acDSPostUpdate(Sender: TObject);
    procedure acDSCancelUpdate(Sender: TObject);
    procedure acDSPostExecute(Sender: TObject);
    procedure acDSCancelExecute(Sender: TObject);
    procedure acChooseUpdate(Sender: TObject);
    procedure acDSFirstUpdate(Sender: TObject);
    procedure acDSPriorUpdate(Sender: TObject);
    procedure acDSNextUpdate(Sender: TObject);
    procedure acDSLastUpdate(Sender: TObject);
    procedure acDSFirstExecute(Sender: TObject);
    procedure acDSPriorExecute(Sender: TObject);
    procedure acDSNextExecute(Sender: TObject);
    procedure acDSLastExecute(Sender: TObject);
    procedure acDSInsertCopyExecute(Sender: TObject);
    procedure acDSInsertExecute(Sender: TObject);
    procedure acDSInsertUpdate(Sender: TObject);
    procedure acDSDeleteUpdate(Sender: TObject);
    procedure acDSInsertCopyUpdate(Sender: TObject);
    procedure acDSInsertChildExecute(Sender: TObject);
    procedure acDSInsertChildUpdate(Sender: TObject);
    procedure acDSRefreshExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acDSDeleteExecute(Sender: TObject);
    procedure acViewUpdate(Sender: TObject);
  private
    FReportFileName: widestring;
    FDataLinks: TStringList;
    FDataClosed: TStringList;
    FActiveControl: TWinControl;
    FKeyField: string;
    FOldID: variant;
    FBeforeInsertEvent: TNotifyEvent;
    FBeforeInsertChildEvent: TNotifyEvent;
    procedure SetBeforeInsertChild(AValue: TNotifyEvent);
    procedure SetControlActive(AEditting: boolean);
    { Private declarations }
  public
    { Public declarations }
    property TemplateFile: widestring read FReportFileName write
      FReportFileName;
    procedure SetListSource(ADatasource: TDataSource);
    procedure SetDataSource(ADatasource: TDataSource);
    procedure AddDataLink(ADataSource: TDataSource; AClose: boolean = true);
    procedure RemoveDataLink(ADataSource: TDataSource);
    procedure SetActiveControl(AActiveControl: TWinControl);
    procedure SetKeyField(AKeyField: string);
    property OnBeforeInsert: TNotifyEvent read FBeforeInsertEvent write
      FBeforeInsertEvent;
    property OnBeforeInsertChild: TNotifyEvent read FBeforeInsertChildEvent write
      SetBeforeInsertChild;
    function GetOldID: variant;
    destructor Destroy; override;
    procedure CloseDatasets(caActive: boolean = true);
    procedure OpenDatasets;
  end;
const
  ptMREAD = 8;
  ptMINSERT = 4;
  ptMEDIT = 2;
  ptMDELETE = 1;
  WM_USER_COPY_NOTE = WM_USER + 107;
implementation

{$R *.dfm}

procedure TframeToolbar.acDSPostUpdate(Sender: TObject);
var
  i: integer;
  f: boolean;
begin
  f := (acDSPost.DataSource <> nil) and (acDSPost.DataSource.DataSet <> nil) and
    (acDSPost.DataSource.DataSet.State in [dsInsert, dsEdit]);
  if Assigned(FDataLinks) then
    for i := 0 to FDataLinks.Count - 1 do
    begin
      f := f or (Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit,
        dsInsert]));
      if f then Break;
    end;
  acDSPost.Enabled := f;
end;

procedure TframeToolbar.acDSCancelUpdate(Sender: TObject);
var
  i: integer;
  f: boolean;
begin
  f := (acDSCancel.DataSource <> nil) and (acDSPost.DataSource.DataSet <> nil)
    and (acDSCancel.DataSource.DataSet.State in [dsInsert, dsEdit]);
  if Assigned(FDataLinks) then
    for i := 0 to FDataLinks.Count - 1 do
    begin
      f := f or (Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit,
        dsInsert]));
      if f then Break;
    end;
  acDSCancel.Enabled := f;
end;

procedure TframeToolbar.acDSPostExecute(Sender: TObject);
var
  i: integer;
begin
  if Assigned(FDataLinks) then
    for i := 0 to FDataLinks.Count - 1 do
    begin
      if (TDatasource(FDataLinks.Objects[i]).DataSet <> nil) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit, dsInsert])
          then
        TDatasource(FDataLinks.Objects[i]).DataSet.Post;
    end;
  if acDSPost.DataSource <> nil then
    if acDSPost.DataSource.Dataset.State in [dsEdit, dsInsert] then
      acDSPost.DataSource.Dataset.Post;
end;

procedure TframeToolbar.acDSCancelExecute(Sender: TObject);
var
  i: integer;
begin
  if Assigned(FDataLinks) then
    for i := FDataLinks.Count - 1 downto 0 do
    begin
      if (TDatasource(FDataLinks.Objects[i]).DataSet <> nil) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit, dsInsert])
          then
        TDatasource(FDataLinks.Objects[i]).DataSet.Cancel;
    end;
  if acDSCancel.DataSource <> nil then
    if acDSCancel.DataSource.Dataset.State in [dsEdit, dsInsert] then
      acDSCancel.DataSource.Dataset.Cancel;
end;

procedure TframeToolbar.acChooseUpdate(Sender: TObject);
begin
  if acDSCancel.DataSource <> nil then
    acChoose.Enabled := (not (acDSCancel.DataSource.Dataset.State in [dsEdit,
      dsInsert]))
      and (acDSCancel.DataSource.Dataset.RecordCount > 0)
  else
    acChoose.Enabled := false;
end;

procedure TframeToolbar.acDSFirstUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (acDSFirst.DataSource <> nil) and (not
    acDSFirst.DataSource.DataSet.Bof);
end;

procedure TframeToolbar.acDSPriorUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (acDSPrior.DataSource <> nil) and (not
    acDSPrior.DataSource.DataSet.Bof);
end;

procedure TframeToolbar.acDSNextUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (acDSNext.DataSource <> nil) and (not
    acDSNext.DataSource.DataSet.Eof);
end;

procedure TframeToolbar.acDSLastUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (acDSLast.DataSource <> nil) and (not
    acDSLast.DataSource.DataSet.Eof);
end;

procedure TframeToolbar.acDSFirstExecute(Sender: TObject);
begin
  acDSFirst.DataSource.DataSet.First;
end;

procedure TframeToolbar.acDSPriorExecute(Sender: TObject);
begin
  acDSPrior.DataSource.DataSet.Prior;
end;

procedure TframeToolbar.acDSNextExecute(Sender: TObject);
begin
  acDSNext.DataSource.DataSet.Next;
end;

procedure TframeToolbar.acDSLastExecute(Sender: TObject);
begin
  acDSLast.DataSource.DataSet.Last;
end;

procedure TframeToolbar.SetListSource(ADatasource: TDataSource);
begin
  acDSFirst.DataSource := ADatasource;
  acDSPrior.DataSource := ADatasource;
  acDSNext.DataSource := ADatasource;
  acDSLast.DataSource := ADatasource;

  dxLayoutControl1.BeginUpdate;
  dxLayoutControl1Group2.Visible := (ADatasource <> nil);
  dxLayoutControl1.EndUpdate;
end;

procedure TframeToolbar.AddDataLink(ADataSource: TDataSource; AClose: boolean =
  true);
var
  i: smallint;
begin
  if not Assigned(ADataSource) then Exit;
  if not Assigned(FDataLinks) then
  begin
    FDataLinks := TStringList.Create;
    FDataLinks.Duplicates := dupIgnore;
    FDataClosed := TStringList.Create;
    FDataClosed.Duplicates := dupAccept;
  end;
  i := FDataLinks.IndexOf(ADataSource.Name);
  if i = -1 then
  begin
    i := FDataLinks.AddObject(ADataSource.Name, ADataSource);
    if i > (FDataClosed.Count - 1) then
      FDataClosed.Add('0');
    if AClose and Assigned(ADataSource.DataSet)
      and (not ADataSource.DataSet.Active) then
      FDataClosed.Strings[i] := '1'
    else
      FDataClosed.Strings[i] := '0';
  end;
end;

procedure TframeToolbar.RemoveDataLink(ADataSource: TDataSource);
var
  index: integer;
begin
  if not Assigned(FDataLinks) then Exit;
  index := FDataLinks.IndexOf(ADataSource.Name);
  if index > -1 then
  begin
    FDataLinks.Delete(index);
    FDataClosed.Delete(index);
  end;
end;

procedure TframeToolbar.acDSInsertCopyExecute(Sender: TObject);
var
  varCopyData: Variant;
  i, j: Integer;
  AAppend: boolean;
  f: TField;
  stream: TStream;
  li: TList;
begin
  AAppend := (acDSInsertCopy.tag = 3);
  if not Assigned(acDSInsertCopy.DataSource.DataSet) then Exit;

  if Assigned(FBeforeInsertEvent) then
    FBeforeInsertEvent(nil);

  with TIBODataset(acDSInsertCopy.DataSource.DataSet) do
  begin
    varCopyData := VarArrayCreate([0, FieldCount - 1], varVariant);
    f := FindField(FKeyField);
    if Assigned(f) then
    begin
      FOldID := FieldByName(FKeyField).Value;
      SendMessage(Application.MainForm.Handle, WM_USER_COPY_NOTE, 0,
        longint(@FOldID));
    end;
    try
      li := TList.Create;
      for i := 0 to FieldCount - 1 do
      begin
        if Fields[i].IsBlob then
        begin
          stream := CreateBlobStream(Fields[i], bmRead);
          stream.Position := 0;
          li.Add(stream);
        end
        else
          varCopyData[i] := FieldByName(Fields[i].FieldName).Value;
      end;
      if AAppend then
        Append
      else
        Insert;
      j := 0;
      for i := 0 to FieldCount - 1 do
        if Fields[i].IsNull then
          if Fields[i].IsBlob then
          begin
            stream := CreateBlobStream(Fields[i], bmReadWrite);
            stream.CopyFrom(TStream(li[j]), TStream(li[j]).Size);
            TStream(li[j]).Free;
            Inc(j);
          end
          else
            FieldByName(Fields[i].FieldName).Value := VarCopyData[i];
      if Assigned(f) then
        Post;
      SetControlActive(true);
    finally
      li.Free;
    end;
  end;
end;

procedure TframeToolbar.acDSInsertExecute(Sender: TObject);
begin
  if Assigned(FBeforeInsertEvent) then
    FBeforeInsertEvent(nil);

  if TAction(Sender).Tag = 0 then
    acDSInsert.DataSource.DataSet.Insert
  else
    if TAction(Sender).Tag = 1 then
      acDSInsert.DataSource.DataSet.Append
    else
    begin
      acDSInsertCopy.Tag := TAction(Sender).Tag;
      acDSInsertCopy.Execute;
    end;
  SetControlActive(true);
end;

procedure TframeToolbar.SetDataSource(ADatasource: TDataSource);
begin
{
  if acDSInsert.DataSource <> ADatasource then
  begin
    FOldID := null;
    FKeyField := '';
    FActiveControl := nil;
    OnBeforeInsert := nil;
    OnBeforeInsertChild := nil;
  end;
}
  acDSInsert.DataSource := ADatasource;
  acDSInsertCopy.DataSource := ADatasource;
  acDSDelete.DataSource := ADatasource;
  acDSPost.DataSource := ADatasource;
  acDSCancel.DataSource := ADatasource;
  acDSRefresh.DataSource := ADatasource;
{
  dxLayoutControl1.BeginUpdate;
  dxlctrlSave.Visible :=
    Assigned(acDSInsert.DataSource) and
    Assigned(acDSInsert.DataSource.DataSet)
    and ((acDSInsert.DataSource.Dataset.Tag and ptMINSERT) = ptMINSERT)
    and ((acDSInsert.DataSource.Dataset.Tag and ptMEDIT) = ptMEDIT);
  dxlctrlCancel.Visible := dxlctrlSave.Visible;

  dxLayoutControl1.EndUpdate;
}
//  AddDataLink(ADatasource);
end;

procedure TframeToolbar.acDSInsertUpdate(Sender: TObject);
begin
{
  acDSInsert.Enabled := Assigned(acDSInsert.DataSource) and
    Assigned(acDSInsert.DataSource.DataSet)
    and acDSInsert.DataSource.Enabled
    and acDSInsert.DataSource.DataSet.Active and
    ((acDSInsert.DataSource.Dataset.Tag and ptMINSERT) = ptMINSERT)
    and dxlctrlInsert.Visible;

  if Assigned(acDSInsert.DataSource)
    and Assigned(acDSInsert.DataSource.DataSet)
    and (acDSInsert.DataSource.DataSet is TIBOQuery) then
    acDSInsert.Enabled := acDSInsert.Enabled and
      (TIBOQuery(acDSInsert.DataSource.DataSet).InsertSQL.Text <> '');
}
end;

procedure TframeToolbar.acDSDeleteUpdate(Sender: TObject);
begin
     acDSDelete.Enabled:=not acDSDelete.DataSource.DataSet.IsEmpty;
{
  acDSDelete.Enabled := Assigned(acDSDelete.DataSource) and
    Assigned(acDSDelete.DataSource.DataSet) and
    (acDSDelete.DataSource.DataSet.RecordCount > 0)
    and acDSDelete.DataSource.Enabled
    and acDSDelete.DataSource.DataSet.CanModify
    and ((acDSDelete.DataSource.Dataset.Tag and ptMDELETE) = ptMDELETE)
    and dxlctrlDelete.Visible;
  if Assigned(acDSDelete.DataSource) and
    Assigned(acDSDelete.DataSource.DataSet) and
    (acDSDelete.DataSource.DataSet is TIBOQuery) then
    acDSDelete.Enabled := acDSDelete.Enabled and
      (TIBOQuery(acDSDelete.DataSource.DataSet).DeleteSQL.Text <> '');
}
end;

procedure TframeToolbar.acDSInsertCopyUpdate(Sender: TObject);
begin
  acDSInsertCopy.Enabled := Assigned(acDSInsertCopy.DataSource) and
    Assigned(acDSInsertCopy.DataSource.DataSet)
    and acDSInsertCopy.DataSource.Enabled
    and acDSInsertCopy.DataSource.DataSet.CanModify
    and ((acDSInsertCopy.DataSource.Dataset.Tag and ptMINSERT) = ptMINSERT)
    and dxlctrlInsertCopy.Visible;
  if Assigned(acDSInsertCopy.DataSource)
    and Assigned(acDSInsertCopy.DataSource.DataSet)
    and (acDSInsertCopy.DataSource.DataSet is TIBOQuery) then
    acDSInsertCopy.Enabled := acDSInsertCopy.Enabled and
      (TIBOQuery(acDSInsertCopy.DataSource.DataSet).InsertSQL.Text <> '');
end;

procedure TframeToolbar.SetActiveControl(AActiveControl: TWinControl);
var
  i: integer;
begin
  if FActiveControl <> AActiveControl then
  begin
    FActiveControl := AActiveControl;
    SetControlActive(false);
  end;
end;

procedure TframeToolbar.SetKeyField(AKeyField: string);
begin
  FKeyField := AKeyField;
end;

function TframeToolbar.GetOldID: variant;
begin
  Result := FOldID;
end;

procedure TframeToolbar.acDSInsertChildExecute(Sender: TObject);
begin
  if Assigned(FBeforeInsertChildEvent) then
    FBeforeInsertChildEvent(nil);
  acDSInsertChild.DataSource.DataSet.Insert;
  SetControlActive(true);
end;

procedure TframeToolbar.SetBeforeInsertChild(AValue: TNotifyEvent);
begin
  FBeforeInsertChildEvent := AValue;
  if Assigned(FBeforeInsertChildEvent) then
  begin
    acDSInsertChild.OnExecute := acDSInsertChildExecute;
    if not Assigned(acDSInsertChild.OnUpdate) then
      acDSInsertChild.OnUpdate := acDSInsertChildUpdate;
    acDSInsertChild.DataSource := acDSInsert.DataSource;
  end
  else
  begin
    acDSInsertChild.OnExecute := nil;
    acDSInsertChild.DataSource := nil;
    acDSInsertChild.OnUpdate := nil;
  end;
  dxLayoutControl1.BeginUpdate;
  dxlctrlInsertChild.Visible := Assigned(FBeforeInsertChildEvent);
  dxLayoutControl1.EndUpdate;
end;

procedure TframeToolbar.acDSInsertChildUpdate(Sender: TObject);
begin
  acDSInsertChild.Enabled := Assigned(acDSInsertChild.DataSource) and
    Assigned(acDSInsertChild.DataSource.DataSet)
    and acDSInsertChild.DataSource.Enabled
    and acDSInsertChild.DataSource.DataSet.CanModify
    and (acDSInsertChild.DataSource.Dataset.RecordCount > 0)
    and ((acDSInsertChild.DataSource.Dataset.Tag and ptMINSERT) = ptMINSERT)
    and dxlctrlInsertChild.Visible;
  if Assigned(acDSInsertChild.DataSource) and
    Assigned(acDSInsertChild.DataSource.DataSet)
    and (acDSInsertChild.DataSource.DataSet is TIBOQuery) then
    acDSInsertChild.Enabled := acDSInsertChild.Enabled and
      (TIBOQuery(acDSInsertChild.DataSource.DataSet).InsertSQL.Text <> '');
end;

procedure TframeToolbar.SetControlActive(AEditting: boolean);
var
  i: integer;
  form: TCustomForm;
begin
  if Assigned(FActiveControl) then
  begin
    form := GetParentForm(Self);
    if Assigned(form) then
    begin
      if form.Visible then
      begin
        if FActiveControl.InheritsFrom(TCustomdxTreeListControl) then
          for i := 0 to
            TCustomdxTreeListControl(FActiveControl).VisibleColumnCount
            - 1 do
            if not
              TCustomdxTreeListControl(FActiveControl).VisibleColumns[i].DisableEditor then
            begin
              TCustomdxTreeListControl(FActiveControl).FocusedColumn := i;
              if AEditting then
              begin
                FActiveControl.SetFocus;
                TCustomdxTreeListControl(FActiveControl).ShowEditor;
              end;
              break;
            end;
        if FActiveControl.InheritsFrom(TCustomdxInspectorControl) then
          for i := 0 to
            TCustomdxInspectorControl(FActiveControl).TotalRowCount - 1 do
            if TCustomdxInspectorControl(FActiveControl).Rows[i].Visible
              and not
              TCustomdxInspectorControl(FActiveControl).Rows[i].IsCategory then
            begin
              TCustomdxInspectorControl(FActiveControl).Rows[i].Node.Focused :=
                true;
              if AEditting then
              begin
                FActiveControl.SetFocus;
                TCustomdxInspectorControl(FActiveControl).ShowEditor;
              end;
              break;
            end;
      end
      else
        form.ActiveControl := FActiveControl;
    end;
  end;
end;

destructor TframeToolbar.Destroy;

begin
  if Assigned(FDataLinks) then
  begin
    FDataLinks.Free;
    FDataClosed.Free;
  end;
  inherited;
end;

procedure TframeToolbar.CloseDatasets(caActive: boolean);
var
  i: integer;
begin
  acDSCancel.Execute;
  if Assigned(FDataLinks) then
  begin
    for i := (FDataLinks.Count - 1) downto 0 do
      if Assigned(FDataLinks.Objects[i]) and
        Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        (FDataClosed.Strings[i] = '1') then
      begin
        TDatasource(FDataLinks.Objects[i]).DataSet.Close;
      end;
  end;
end;

procedure TframeToolbar.acDSRefreshExecute(Sender: TObject);
var
  i: integer;
begin
  if Assigned(FDataLinks) then
  begin
    for i := 0 to (FDataLinks.Count - 1) do
      if Assigned(FDataLinks.Objects[i]) and
        Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        TDatasource(FDataLinks.Objects[i]).DataSet.Active then
        TDatasource(FDataLinks.Objects[i]).DataSet.Refresh;
  end;
end;

procedure TframeToolbar.acCloseExecute(Sender: TObject);
var
  f: TForm;
begin
  f := TForm(GetParentForm(Self));
  if Assigned(f) then
    if f.FormStyle = fsMDIChild then
      f.Close
    else
      f.ModalResult := mrCancel;
end;

procedure TframeToolbar.OpenDatasets;
var
  i: integer;
begin
  if Assigned(FDataLinks) then
  begin
    for i := 0 to (FDataLinks.Count - 1) do
      if Assigned(FDataLinks.Objects[i]) and
        Assigned(TDatasource(FDataLinks.Objects[i]).DataSet)
        and (not TDatasource(FDataLinks.Objects[i]).DataSet.Active) then
      begin
        TDatasource(FDataLinks.Objects[i]).DataSet.Open;
      end;
  end;
end;

procedure TframeToolbar.acDSDeleteExecute(Sender: TObject);
begin
  if Assigned(FActiveControl)and(FActiveControl.InheritsFrom(TCustomdxTreeList)) then
  begin
    if Assigned(THackTreeList(FActiveControl).FocusedNode) then
      THackTreeList(FActiveControl).FocusedNode.Selected := true;
    THackTreeList(FActiveControl).DeleteSelection;
  end
  else
    acDSDelete.ExecuteTarget(acDSDelete.DataSource);
end;

procedure TframeToolbar.acViewUpdate(Sender: TObject);
begin
  acView.Enabled := Assigned(acDSInsert.DataSource) and
    Assigned(acDSInsert.DataSource.DataSet)
    and acDSInsert.DataSource.DataSet.Active and
    ((acDSInsert.DataSource.Dataset.Tag and ptMREAD) = ptMREAD);
end;

end.

