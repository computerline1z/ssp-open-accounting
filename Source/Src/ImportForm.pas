unit ImportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, dxLayoutLookAndFeels, dxLayoutControl, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBGrid,
  cxControls, XLSReadWriteII, IBODataset, ComCtrls,dxDBCtrl, StdCtrls,
  ElCLabel, ElLabel;
type
  TImportFrm = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxMemo1: TdxMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    ProgressBar1: TProgressBar;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    SaveDialog1: TSaveDialog;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl1Item4: TdxLayoutItem;
    lblRows: TElLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnPause: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    lblRowNum: TElLabel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure FormActivate(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    ImportGrid: TCustomdxDBTreeListControl;
    { Public declarations }
  end;

var
  ImportFrm: TImportFrm;

implementation

uses Functions, GlobalUnit;

{$R *.dfm}

procedure TImportFrm.FormActivate(Sender: TObject);
var
  i, j, ImportCount, ErrorCount: Integer;
  XLSRead: TXLSReadWriteII;
  OpenDialog1: TOpenDialog;
  IsErrorRow: Boolean;
begin
  if (ImportGrid.DataSource.DataSet is TIBOQuery) then
    if (ImportGrid.DataSource.DataSet as TIBOQuery).InsertSQL.Text = '' then exit;

  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel Files | *.xls';
  OpenDialog1.DefaultExt := 'xls';

  if not OpenDialog1.Execute then
  begin
    ModalResult := mrOk;
    Self.Close;
    Exit;
  end;

  ElPopupButton1.Enabled := True;

  ImportingFromXLS := True;
  XLSRead := TXLSReadWriteII.Create(nil);
  XLSRead.Filename := OpenDialog1.FileName;
  try
    XLSRead.Read;
  except
    XLSRead.Free;
    OpenDialog1.Free;
    ShowMessageUnicode(220);
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  ImportCount := XLSRead.Sheets.Items[0].LastRow;
  ProgressBar1.Max := ImportCount;
  ErrorCount := 0;
  ImportGrid.DataSource.DataSet.DisableControls;
  for i := 1 to ImportCount do
  begin
    ProgressBar1.StepIt;
    IsErrorRow := False;
    ImportGrid.DataSource.DataSet.Insert;
    try
      for j := 0 to ImportGrid.VisibleColumnCount - 1 do
        if XLSRead.Sheets.Items[0].AsWideString[j, i] <> '' then
          ImportGrid.DataSource.DataSet.FieldByName(ImportGrid.VisibleColumns[j].FieldName).Value := XLSRead.Sheets.Items[0].AsWideString[j, i];

      ImportGrid.DataSource.DataSet.Post;
      
    except
      IsErrorRow := True;
      dxMemo1.Text := dxMemo1.Text + UTF8Decode('********* Dòng ' + IntToStr(i)
        + ' đưa vào bị lỗi *********') + #13#10;
      ErrorCount := ErrorCount + 1;
      ImportGrid.DataSource.DataSet.Cancel;
    end;
    //Thinh bo vi thao tac nay lam cham va khong can thiet
    {if IsErrorRow = False then
      dxMemo1.Text := dxMemo1.Text + UTF8Decode('- Dòng ' + IntToStr(i) +
        ' đưa vào THÀNH CÔNG') + #10; }
    lblRowNum.Caption := IntToStr(i);
    dxMemo1.Refresh;
    lblRowNum.Refresh;
  end;
  ImportGrid.DataSource.DataSet.EnableControls;
  ProgressBar1.Visible := False;
  dxLayoutControl1Item3.Visible := True;
  XLSRead.Free;
  OpenDialog1.Free;
  ImportingFromXLS := False;
  ImportCount := ImportCount - ErrorCount;
  Screen.Cursor := crDefault;
  ElPopupButton1.Enabled := True;
  ShowMessageUnicode(219);
end;

procedure TImportFrm.ElPopupButton2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    dxMemo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TImportFrm.ElPopupButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TImportFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
end;

end.

