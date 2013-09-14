unit ObjDocBalForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, ExtCtrls, dxLayoutControl, Forms,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBTLCl, StdCtrls, Buttons,
  dxGrClms, dxDBGrid,dxTreeGridMenus, dxEdLib, dxDBELib, dxBar, ActnList,DB,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  IBODataset, DBActns, dxEditor, ElCheckCtl, dxmdaset;

type
  TObjDocBalFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnHelp: TELPopupButton;
    btnClose: TELPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1SOPHIEU: TdxDBGridColumn;
    dxDBGrid1NGAYLAP: TdxDBGridColumn;
    dxDBGrid1NOIDUNG: TdxDBGridColumn;
    dxDBGrid1NOCK: TdxDBGridColumn;
    dxDBGrid1COCK: TdxDBGridColumn;
    btnSelect: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBGrid1TIENHANG: TdxDBGridCalcColumn;
    dxDBGrid1TIENTHUE: TdxDBGridCalcColumn;
    dxDBGrid1SOSERI: TdxDBGridColumn;
    dxDBGrid1SOHD: TdxDBGridColumn;
    dxDBGrid1NGAYHD: TdxDBGridDateColumn;
    dxDBGrid1TENHANG: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxCalcEdit1: TdxCalcEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    rbFIFO: TElRadioButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    rbLIFO: TElRadioButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxDBGrid1SODUNO: TdxDBGridMaskColumn;
    txtTongtien: TdxMaskEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxDBGrid1SODUCO: TdxDBGridMaskColumn;
    dxDBGrid1CHECK_FIELD: TdxDBGridCheckColumn;
    dxMemData1: TdxMemData;
    dsPDocBal: TDataSource;
    ElCheckBox1: TElCheckBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure dxCalcEdit1Exit(Sender: TObject);
    procedure dxCalcEdit1Enter(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure dxDBGrid1CHECK_FIELDChange(Sender: TObject);
    procedure CopyQueryMem;
  private
    SotienThanhtoan:Double;
    { Private declarations }
  public
    SOPHIEU,MADT,SHTK:WideString;
    ISFIRST, KYHT,LOAIDT,DANGBENNO:Smallint;
    STTDONGHT,STTLONNHAT:Smallint;
    TONGTIENTT :double;
    { Public declarations }
  end;

var
  ObjDocBalFrm: TObjDocBalFrm;

implementation

uses MainForm, MainDataMdl, GlobalUnit, LookupFrm, InvoiceForm, HtmlHlp;

{$R *.dfm}

procedure TObjDocBalFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  SotienThanhtoan:=0;
  TONGTIENTT := 0;

  dxDBGrid1NOCK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1COCK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1SODUNO.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1SODUCO.SummaryFooterFormat:=TIENTE_FORMAT;

{  dxDBGrid1NOCK.DisplayFormat:=TIENTE_FORMAT;
  dxDBGrid1COCK.DisplayFormat:=TIENTE_FORMAT;
  dxDBGrid1SODUNO.DisplayFormat:=TIENTE_FORMAT;
  dxDBGrid1SODUCO.DisplayFormat:=TIENTE_FORMAT;}
  {if (dangbenno = 1) then
  begin
    dxDBGrid1SODUno.Visible := FALSE;
    maindm.qryPDocBal.OnFilterRecord := maindm.qryPDocBalFilterRecordBENCO;
    maindm.qryPDocBal.Filtered := TRUE;
    end
  else begin
    dxDBGrid1SODUCO.Visible := FALSE;
    maindm.qryPDocBal.OnFilterRecord := maindm.qryPDocBalFilterRecordBENNO;
    maindm.qryPDocBal.Filtered := TRUE;

  end;}


  if vpBranch_IsMin <> 1 then
  begin
    maindm.qryPDocBal.ReadOnly := TRUE;
    ElPopupButton2.Enabled := FALSE;
    btnSelect.Enabled := false;
  end
  else
    maindm.qryPDocBal.ReadOnly := FALSE;
end;

procedure TObjDocBalFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TObjDocBalFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_Return then
  begin
    btnSelectClick(Sender);
    Exit;
  end
end;

procedure TObjDocBalFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDM.qryPDocBal.Close;
end;

procedure TObjDocBalFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TObjDocBalFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnSelectClick(Sender);
end;

procedure TObjDocBalFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TObjDocBalFrm.btnSelectClick(Sender: TObject);
var
  STTT : Double;
begin

  with MainDM do
  begin

    dxMemData1.First;

    while not dxMemData1.Eof do
    begin

      if dxMemData1.fieldbyname('CHECK_FIELD').Value = 0 then
      begin
        dxMemData1.Next;
        Continue;
      end;

      if DANGBENNO =1 then
      begin

        if dxMemData1.fieldbyname('COCK').AsFloat<>0 then
          STTT:=dxMemData1.fieldbyname('COCK').Value
        else
          STTT:=-dxMemData1.fieldbyname('NOCK').Value;
        end
      else
      begin

        if dxMemData1.fieldbyname('NOCK').AsFloat<>0 then
          STTT:=dxMemData1.fieldbyname('NOCK').value
        else
          STTT:=-dxMemData1.fieldbyname('COCK').Value;
      end;


      qryCommon.Close;
      qryCommon.SQL.Clear;
      qryCommon.Params.Clear;
      qryCommon.SQL.Text :='execute procedure SP_TTCNDICHDANH_LC(:SOPHIEU,:KYHT,:SPPS,:KYPS,:ISFIRST,:STTHT,:STTLN,:STTT,:BRANCH_ID)';
      qryCommon.Prepare;

      qryCommon.ParamByName('SOPHIEU').Value := SOPHIEU;
      qryCommon.ParamByName('KYHT').Value := KYHT;
      qryCommon.ParamByName('SPPS').Value := dxMemData1.fieldbyname('SOPHIEU').value;//qryPDocBalSOPHIEU.Value;
      qryCommon.ParamByName('KYPS').Value := dxMemData1.fieldbyname('KYHT').value;//qryPDocBalKYHT.Value;
      qryCommon.ParamByName('ISFIRST').AsInteger := ISFIRST;
      qryCommon.ParamByName('STTHT').AsInteger := STTDONGHT;
      qryCommon.ParamByName('STTLN').AsInteger := STTLONNHAT;
      qryCommon.ParamByName('STTT').AsFloat := STTT;
      qryCommon.ParamByName('BRANCH_ID').Value :=vpBranch_id;

      qryCommon.ExecSQL;
      qryCommon.Close;
      STTLONNHAT:=STTLONNHAT+1;
      ISFIRST := 0;
      //qryPDocBal.Refresh;
      dxMemData1.next;
    end;//While
  end;//with
  //Maindm.qryPDocBal.Refresh;
  Maindm.qryPDocBal.close;
  Maindm.qryPDocBal.open;
  dxMemData1.close;
  CopyQueryMem;

end;

procedure TObjDocBalFrm.FormShow(Sender: TObject);
var  STTT :double;
begin

  MainDM.qryPDocBalSODUNO.DisplayFormat := TIENTE_FORMAT;
  MainDM.qryPDocBalSODUCO.DisplayFormat := TIENTE_FORMAT;

  MainDM.qryPDocBal.ParamByName('SHTK').Value:=SHTK;
  MainDM.qryPDocBal.ParamByName('KYHTHT').AsInteger:=KYHT;
  MainDM.qryPDocBal.ParamByName('MADT').Value:=MADT;
  MainDM.qryPDocBal.ParamByName('LOAIDT').Value:=LOAIDT;
  MainDM.qryPDocBal.ParamByName('SP').Value:=SOPHIEU;
  MainDM.qryPDocBal.ParamByName('BRANCH_ID').Value:=vpBranch_id;

  MainDM.qryPDocBal.Open;
  CopyQueryMem;

  if MainDM.qryPDocBal.RecordCount = 1 then
  begin
    dxMemData1.Edit;
    dxMemData1.FieldByName('CHECK_FIELD').Value := 1;
    dxMemData1.Post;

    MainDM.qryPDocBal.Edit;
    MainDM.qryPDocBalCHECK_FIELD.Value := 1;

      if MainDM.qryPDocBalCOCK.AsFloat<>0 then
        STTT:=MainDM.qryPDocBalCOCK.Value
      else
        STTT:=-MainDM.qryPDocBalNOCK.Value;

    txttongtien.Text:=FormatFloat(TIENTE_FORMAT,STTT);
  end;

  SetVisible(Self);
end;

procedure TObjDocBalFrm.ElPopupButton1Click(Sender: TObject);
begin
    qryBgDocList:=MainDM.qryPDocBal;
    DocIDFieldName:='SOPHIEU';
    PeriodFieldName:='KYHT';
    BranchIDFieldName:='BRANCH_ID';
    isPosted:=False;
    {if MainDM.qryPDocBal.RecordCount=1 then
      MainDM.Suachungtu(MainDM.qryPDocBalSOPHIEU.Value, MainDM.qryPDocBalKYHT.AsInteger,
                        MainDM.qryPDocBalBRANCH_ID.Value)
    else
      MainDM.Suachungtu(MainDM.qryPDocBalSOPHIEU.Value, MainDM.qryPDocBalKYHT.AsInteger,
                        MainDM.qryPDocBalBRANCH_ID.Value,True);   }
   if dxMemData1.RecordCount=1 then
      MainDM.Suachungtu(dxMemData1.fieldbyname('SOPHIEU').Value, dxMemData1.fieldbyname('KYHT').asInteger,
                        dxMemData1.fieldbyname('BRANCH_ID').value)
    else
      MainDM.Suachungtu(dxMemData1.fieldbyname('SOPHIEU').Value, dxMemData1.fieldbyname('KYHT').AsInteger,
                        dxMemData1.fieldbyname('BRANCH_ID').Value,True);
end;

procedure TObjDocBalFrm.ElPopupButton2Click(Sender: TObject);
begin
  with MainDM do
  begin
    qryCommon.Close;
    qryCommon.SQL.Clear;
    qryCommon.Params.Clear;
    qryCommon.SQL.Text :='execute procedure SP_TTCNDICHDANH(:SOPHIEU,:KYHT,:SHTK,:MADT,:TTBENNO,:STTHT,:STTLN,:STTT,:FIFO,:BRANCH_ID)';
    qryCommon.Prepare;

    qryCommon.ParamByName('SOPHIEU').Value := SOPHIEU;
    qryCommon.ParamByName('KYHT').Value := KYHT;
    qryCommon.ParamByName('SHTK').Value := SHTK;
    qryCommon.ParamByName('MADT').Value := MADT;
    qryCommon.ParamByName('TTBENNO').AsInteger := DANGBENNO;
    qryCommon.ParamByName('STTHT').AsInteger := STTDONGHT;
    qryCommon.ParamByName('STTLN').AsInteger := STTLONNHAT;
    qryCommon.ParamByName('STTT').AsFloat := SotienThanhtoan;
    qryCommon.ParamByName('BRANCH_ID').AsString := vpBranch_id; 
    if rbFIFO.Checked then
      qryCommon.ParamByName('FIFO').AsInteger := 1
    else
      qryCommon.ParamByName('FIFO').AsInteger := 0;

    qryCommon.ExecSQL;
    qryCommon.Close;
  end;
  Self.Close;
end;

procedure TObjDocBalFrm.dxCalcEdit1Exit(Sender: TObject);
begin
  if Not TryStrToFloat(dxCalcEdit1.Text,SotienThanhtoan) then
  begin
    ShowMessageUnicode(134);
    dxCalcEdit1.SetFocus;
    Exit;
  end;
  dxCalcEdit1.Text:=FormatFloat(TIENTE_FORMAT,SotienThanhtoan);

  if (SotienThanhtoan <> 0) and (dxCalcEdit1.Text <> '') then
    dxDBGrid1.Bands[4].Visible := FALSE
  else
    dxDBGrid1.Bands[4].Visible := TRUE;
end;

procedure TObjDocBalFrm.dxCalcEdit1Enter(Sender: TObject);
begin
  dxCalcEdit1.Text:=FloatToStr(SotienThanhtoan);
end;

procedure TObjDocBalFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TObjDocBalFrm.dxDBGrid1CHECK_FIELDChange(Sender: TObject);
var
  STTT : Double;
begin

  dxMemData1.Edit;

  if dxMemData1.fieldbyname('CHECK_FIELD').Value = 0 then
    dxMemData1.fieldbyname('CHECK_FIELD').Value := 1
  else
    dxMemData1.fieldbyname('CHECK_FIELD').value := 0;
  dxMemData1.post;

  if DANGBENNO =1 then
  begin

    if dxMemData1.FieldByName('COCK').AsFloat<>0 then
      STTT:=dxMemData1.FieldByName('COCK').Value
    else
      STTT:=-dxMemData1.FieldByName('NOCK').Value;
  end
  else
  begin

    if dxMemData1.FieldByName('NOCK').AsFloat<>0 then
      STTT:=dxMemData1.FieldByName('NOCK').Value
    else
      STTT:=-dxMemData1.FieldByName('COCK').Value;
  end;

  if (dxMemData1.FieldByName('CHECK_FIELD').Value = 1) then
      TONGTIENTT := TONGTIENTT + STTT
    else
      TONGTIENTT := TONGTIENTT - STTT;

  txttongtien.Text:=FormatFloat(TIENTE_FORMAT,TONGTIENTT);

end;

procedure TObjDocBalFrm.CopyQueryMem;
var i,j:integer;
begin

  dxMemData1.CreateFieldsFromDataSet(maindm.qryPDocBal);
  dxMemData1.Open;

  maindm.qryPDocBal.First;

  for i:= 0 to maindm.qryPDocBal.RecordCount -1 do
  begin
    dxMemData1.Append;
    for j:=0 to maindm.qryPDocBal.FieldCount -1 do
    begin
      dxMemData1.Fields.Fields[j+1].Value := maindm.qryPDocBal.Fields.Fields[j].Value;
      if (dxMemData1.Fields[j+1] is TFloatField) then
      (dxMemData1.Fields[j+1] as TFloatField).DisplayFormat:=TIENTE_FORMAT;
    end;

    dxMemData1.Post;
    maindm.qryPDocBal.next;
  end
end;

end.
