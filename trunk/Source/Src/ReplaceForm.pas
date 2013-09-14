unit ReplaceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, StdCtrls, DB,dxDBGrid,dxDBTL,
  dxTL, TntStdCtrls, ElCLabel, ElLabel, ElXPThemedControl, ElEdits,
  ElCaption,ElStrUtils, ElBtnCtl, ElPopBtn, dxLayoutControl, cxControls,
  IBODataset, dxLayoutLookAndFeels;

type
  TdxmyDBPopupEdit=class(TdxDBPopupEdit);
  TReplaceFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtKeyword: TdxEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxPickEdit1: TdxPickEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnExe: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    edtToString: TdxEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edtCount: TdxEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnExeClick(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtKeywordChange(Sender: TObject);
  private
    FDataset:TDataset;
    FFieldName:string;
    FieldList:array[0..100] of String;
  public
    { Public declarations }
    function SearchDataset(ADataset:TDataset;AFieldName:String):Boolean;
    procedure ReplaceGrid(AGrid:TObject);
    function SearchInData():boolean;
    function SearchInGrid(AGrid:TdxDBGrid;AFieldName:String;AKeyword:WideString):Boolean;
    function SearchInTree(ATree:TdxDBTreeList;AFieldName:String;AKeyword:WideString):Boolean;
  end;

var
  ReplaceFrm: TReplaceFrm;
  CurGrid:TObject;
implementation

uses MainDataMdl, GlobalUnit;

{$R *.dfm}

function TReplaceFrm.SearchDataset(ADataset: TDataset; AFieldName: String):Boolean;
begin
  with TReplaceFrm.Create(Application)do
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

procedure TReplaceFrm.FormShow(Sender: TObject);
  var
  i:Smallint;
  TenField:WideString;
  StrTmp:String;
begin
  if (CurGrid.ClassName = 'TdxDBGrid') then
  begin
    for i:=0 to (CurGrid as TdxDBGrid).VisibleColumnCount-1 do
    begin
      dxPickEdit1.Items.Add((CurGrid as TdxDBGrid).VisibleColumns[i].Caption);
      TenField:=(CurGrid as TdxDBGrid).VisibleColumns[i].FieldName;
      StrTmp:=TenField;
      FieldList[i]:=StrTmp;

      if TenField=FFieldName then
        dxPickEdit1.Text:=(CurGrid as TdxDBGrid).VisibleColumns[i].Caption;
    end;
  end
  else if (CurGrid.ClassName = 'TdxDBTreeList') then
    for i:=0 to (CurGrid as TdxDBTreeList).VisibleColumnCount-1 do
    begin
      dxPickEdit1.Items.Add((CurGrid as TdxDBTreeList).VisibleColumns[i].Caption);
      TenField:=(CurGrid as TdxDBTreeList).VisibleColumns[i].FieldName;
      StrTmp:=TenField;
      FieldList[i]:=StrTmp;

      if TenField=FFieldName then
        dxPickEdit1.Text:=(CurGrid as TdxDBTreeList).VisibleColumns[i].Caption;
    end;

  if not FDataSet.Active then
    FDataset.Open;
end;
function TReplaceFrm.SearchInGrid(AGrid:TdxDBGrid;AFieldName:String; AKeyword:WideString):Boolean;
var
  OldStr,ToStr,AOld,ATo:String;
  RepCnt:Integer;
begin
  Result:=false;
  AGrid.GotoFirst;

  AOld:=UTF8Encode(edtKeyword.Text);
  ATo :=UTF8Encode(edtToString.Text);
  RepCnt:=0;
  while not AGrid.IsEOF do
  begin
    if not AGrid.DataSource.DataSet.FieldByName(AFieldName).IsNull then
    begin
      if (AGrid.DataSource.DataSet.FieldByName(AFieldName) is TWideStringField) then
        OldStr:= UTF8Encode(AGrid.DataSource.DataSet.FieldByName(AFieldName).Value)
      else
        OldStr:= AGrid.DataSource.DataSet.FieldByName(AFieldName).AsString;

      ToStr:=StringReplace(OldStr,AOld,ATo,[rfReplaceAll]);
      if ToStr<>OldStr then
      begin
        Result:=True;
        RepCnt:=RepCnt+1;

        AGrid.DataSource.DataSet.Edit;
        AGrid.DataSource.DataSet.FieldByName(AFieldName).Value:=UTF8Decode(ToStr);
        AGrid.DataSource.DataSet.Post;
      end;
    end;
    AGrid.GotoNext(True);
  end;
  edtCount.Text:=IntToStr(RepCnt);
end;

function TReplaceFrm.SearchInTree(ATree:TdxDBTreeList;AFieldName:String;AKeyword:WideString):Boolean;
var
  OldStr,ToStr,AOld,ATo:String;
  RepCnt:Integer;
begin
  Result:=false;
  ATree.GotoFirst;

  AOld:=UTF8Encode(edtKeyword.Text);
  ATo :=UTF8Encode(edtToString.Text);
  RepCnt:=0;
  while not ATree.IsEOF do
  begin
    if not ATree.DataSource.DataSet.FieldByName(AFieldName).IsNull then
    begin
      if (ATree.DataSource.DataSet.FieldByName(AFieldName) is TWideStringField) then
        OldStr:= UTF8Encode(ATree.DataSource.DataSet.FieldByName(AFieldName).Value)
      else
        OldStr:= ATree.DataSource.DataSet.FieldByName(AFieldName).AsString;

      ToStr:=StringReplace(OldStr,AOld,ATo,[rfReplaceAll]);
      if ToStr<>OldStr then
      begin
        Result:=True;
        RepCnt:=RepCnt+1;

        ATree.DataSource.DataSet.Edit;
        ATree.DataSource.DataSet.FieldByName(AFieldName).Value:=UTF8Decode(ToStr);
        ATree.DataSource.DataSet.Post;
      end;
    end;
    ATree.GotoNext(True);
  end;
  edtCount.Text:=IntToStr(RepCnt);
end;

function TReplaceFrm.SearchInData: boolean;
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

procedure TReplaceFrm.ReplaceGrid(AGrid: TObject);
begin
  CurGrid:=AGrid;
  if (AGrid.ClassName = 'TdxDBGrid') then
  begin
    SearchDataset((AGrid as TdxDBGrid).DataSource.Dataset,(AGrid as TdxDBGrid).FocusedField.FieldName);
  end
  else if (AGrid.ClassName = 'TdxDBTreeList') then
    SearchDataset((AGrid as TdxDBTreeList).DataSource.Dataset,(AGrid as TdxDBTreeList).FocusedField.FieldName);
end;

procedure TReplaceFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TReplaceFrm.FormCreate(Sender: TObject);
begin
  if Not MainDM.qryCaption.Active then
    SetCaption(Self);
  edtKeyword.Text:= OldKeyWord;

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
  
end;

procedure TReplaceFrm.btnExeClick(Sender: TObject);
begin
  IsSearching:=True;
  if SearchInData() then
  begin
    IsSearching:=False;
    OldKeyWord:= edtKeyword.Text;
    //SearchResult:=True;
    //ModalResult:=mrOK;
  end
  else
    ShowMessageUnicode(139);
end;

procedure TReplaceFrm.ElPopupButton2Click(Sender: TObject);
begin
  SearchResult:=False;
  ModalResult:=mrCancel;
end;

procedure TReplaceFrm.FormActivate(Sender: TObject);
begin
  edtKeyword.SetFocus;
end;

procedure TReplaceFrm.edtKeywordChange(Sender: TObject);
begin
  btnExe.Enabled:=(edtKeyword.Text<>'');
end;

end.
