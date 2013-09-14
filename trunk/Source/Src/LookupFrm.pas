unit LookupFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, StdCtrls, DB,dxDBGrid,dxDBTL,
  dxTL, TntStdCtrls, ElCLabel, ElLabel, ElXPThemedControl, ElEdits,
  ElCaption,ElStrUtils, ElBtnCtl, ElPopBtn, dxLayoutControl, cxControls,
  IBODataset, ElPgCtl, dxLayoutLookAndFeels;

type
  TdxmyDBPopupEdit=class(TdxDBPopupEdit);
  TLookup = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtKeyword: TdxEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxPickEdit1: TdxPickEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    FDataset:TDataset;
    FFieldName:string;
    FieldList:array[0..255] of String;
  public
    { Public declarations }
    function SearchDataset(ADataset:TDataset;AFieldName:String):Boolean;
    procedure SearchGrid(AGrid:TObject);
    function SearchInData():boolean;
    function SearchInGrid(AGrid:TdxDBGrid;AFieldName:String;AKeyword:WideString):Boolean;
    function SearchInTree(ATree:TdxDBTreeList;AFieldName:String;AKeyword:WideString):Boolean;
  end;

var
  Lookup: TLookup;
  CurGrid:TObject;
implementation

uses MainDataMdl, GlobalUnit;

{$R *.dfm}

function TLookup.SearchDataset(ADataset: TDataset; AFieldName: String):Boolean;
begin
  with TLookup.Create(Application)do
  try
    FDataset:=ADataset;
    FFieldName:=AFieldName;
    if ShowModal=mrOK then
      Result :=True
    else
      Result :=False;
  finally
    Free;
  end;
end;

procedure TLookup.FormShow(Sender: TObject);
  var
  i:Smallint;
  TenField:WideString;
  StrTmp:String;
begin
  if (CurGrid.ClassName = 'TdxDBGrid') then
  begin
    for i:=0 to (CurGrid as TdxDBGrid).ColumnCount-1 do
    begin
      dxPickEdit1.Items.Add((CurGrid as TdxDBGrid).Columns[i].Caption);
      TenField:=(CurGrid as TdxDBGrid).Columns[i].FieldName;
      StrTmp:=TenField;
      FieldList[i]:=StrTmp;

      if TenField=FFieldName then
        dxPickEdit1.Text:=(CurGrid as TdxDBGrid).Columns[i].Caption;
    end;
  end
  else if (CurGrid.ClassName = 'TdxDBTreeList') then
    for i:=0 to (CurGrid as TdxDBTreeList).ColumnCount-1 do
    begin
      dxPickEdit1.Items.Add((CurGrid as TdxDBTreeList).Columns[i].Caption);
      TenField:=(CurGrid as TdxDBTreeList).Columns[i].FieldName;
      StrTmp:=TenField;
      FieldList[i]:=StrTmp;

      if TenField=FFieldName then
        dxPickEdit1.Text:=(CurGrid as TdxDBTreeList).Columns[i].Caption;
    end;

  if not FDataSet.Active then
    FDataset.Open;
end;
function TLookup.SearchInGrid(AGrid:TdxDBGrid;AFieldName:String; AKeyword:WideString):Boolean;
var
  str,substr:WideString;
  qry:TDataSet;
begin
  Result:=false;
  AGrid.GotoFirst;

  substr:=WideLowerCase(AKeyword);
  qry:=AGrid.DataSource.DataSet;
  AGrid.GotoFirst;
  while Not AGrid.IsEOF do
  begin
    if not qry.FieldByName(AFieldName).IsNull then
    begin
      {if (qry.FieldByName(AFieldName) is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT,qry.FieldByName(AFieldName).AsDateTime))
      else
        str:= WideLowerCase(qry.FieldByName(AFieldName).Value);}
      str:= WideLowerCase(AGrid.GetDisplayValue(AGrid.FocusedNode,AGrid.FocusedAbsoluteIndex));
      if Pos(substr,str)>0 then
      begin
        Result:=true;
        AGrid.SetFocus;
        qry.FieldByName(AFieldName).FocusControl;
        Exit;
      end;
    end;
    AGrid.GotoNext(True);
  end;

  {qry:=AGrid.DataSource.DataSet;
  qry.First;
  while not qry.Eof do
  begin
    if not qry.FieldByName(AFieldName).IsNull then
    begin
      if (qry.FieldByName(AFieldName) is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT,qry.FieldByName(AFieldName).AsDateTime))
      else
        str:= WideLowerCase(qry.FieldByName(AFieldName).Value);

      if Pos(substr,str)>0 then
      begin
        Result:=true;
        qry.FieldByName(AFieldName).FocusControl;
        AGrid.SetFocus;
        Break;
      end;
    end;
    qry.Next;
  end;}
end;

function TLookup.SearchInTree(ATree:TdxDBTreeList;AFieldName:String;AKeyword:WideString):Boolean;
var
  str,substr:WideString;
  IsLast:Boolean;
begin
  Result:=false;
  ATree.GotoFirst;
  IsLast:=False;
  substr:=WideLowerCase(AKeyword);
  while not IsLast do
  begin
    IsLast:=ATree.IsEOF;

    if not ATree.DataSource.DataSet.FieldByName(AFieldName).IsNull then
    begin
      {if (ATree.DataSource.DataSet.FieldByName(AFieldName) is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT,ATree.DataSource.DataSet.FieldByName(AFieldName).AsDateTime))
      else
        str:= WideLowerCase(ATree.DataSource.DataSet.FieldByName(AFieldName).Value);}

      str:= WideLowerCase(ATree.GetDisplayValue(ATree.FocusedNode,ATree.FocusedAbsoluteIndex));
      if Pos(substr,str)>0 then
      begin
        Result:=true;
        ATree.DataSource.DataSet.FieldByName(AFieldName).FocusControl;
        ATree.SetFocus;
        Break;
      end;
    end;
    ATree.GotoNext(True);
  end;
end;

function TLookup.SearchInData: boolean;
begin
  Result:=false;

  if (CurGrid.ClassName = 'TdxDBGrid') then
  begin
    (CurGrid as TdxDBGrid).DataSource.DataSet.DisableControls;
    Result:=SearchInGrid(CurGrid as TdxDBGrid,FieldList[dxPickEdit1.ItemIndex],edtKeyword.Text);
    (CurGrid as TdxDBGrid).DataSource.DataSet.EnableControls;
  end
  else if (CurGrid.ClassName = 'TdxDBTreeList') then
  begin
    (CurGrid as TdxDBTreeList).DataSource.DataSet.DisableControls;
    Result:=SearchInTree(CurGrid as TdxDBTreeList,FieldList[dxPickEdit1.ItemIndex],edtKeyword.Text);
    (CurGrid as TdxDBTreeList).DataSource.DataSet.EnableControls;
  end
  else exit;
end;

procedure TLookup.SearchGrid(AGrid: TObject);
begin
  CurGrid:=AGrid;
  if (AGrid.ClassName = 'TdxDBGrid') then
  begin
    {if (AGrid as TdxDBGrid).Filter.Active then
      (AGrid as TdxDBGrid).Filter.AutoDataSetFilter:=True;}

    SearchDataset((AGrid as TdxDBGrid).DataSource.Dataset,(AGrid as TdxDBGrid).FocusedField.FieldName);

    {if (AGrid as TdxDBGrid).Filter.Active then
      (AGrid as TdxDBGrid).Filter.AutoDataSetFilter:=False;}
  end
  else if (AGrid.ClassName = 'TdxDBTreeList') then
    SearchDataset((AGrid as TdxDBTreeList).DataSource.Dataset,(AGrid as TdxDBTreeList).FocusedField.FieldName);
end;

procedure TLookup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TLookup.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  if Not MainDM.qryCaption.Active then
    SetCaption(Self);
  edtKeyword.Text:= OldKeyWord;
end;

procedure TLookup.ElPopupButton1Click(Sender: TObject);
begin
  IsSearching:=True;
  if SearchInData() then
  begin
    IsSearching:=False;
    OldKeyWord := edtKeyword.Text;
    SearchResult:=True;
    ModalResult:=mrOK;
  end
  else
    ShowMessageUnicode(139);
end;

procedure TLookup.ElPopupButton2Click(Sender: TObject);
begin
  SearchResult:=False;
  ModalResult:=mrCancel;
end;

procedure TLookup.FormActivate(Sender: TObject);
begin
  edtKeyword.SetFocus;
end;

end.
