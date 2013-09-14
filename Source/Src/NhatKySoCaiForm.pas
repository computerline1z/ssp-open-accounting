unit NhatKySoCaiForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, ElCaption, IBODataset;

type
  TNhatKySoCaiFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdAccountArise: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnDetail: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    grdAccountAriseNGAYGHISO: TdxDBGridDateColumn;
    grdAccountAriseSOPHIEU: TdxDBGridMaskColumn;
    grdAccountAriseKYHT: TdxDBGridMaskColumn;
    grdAccountAriseNGAYLAP: TdxDBGridDateColumn;
    grdAccountAriseNOIDUNG: TdxDBGridMaskColumn;
    grdAccountAriseGHICHU: TdxDBGridMaskColumn;
    grdAccountAriseTKNO: TdxDBGridMaskColumn;
    grdAccountAriseTKCO: TdxDBGridMaskColumn;
    grdAccountAriseSOTIEN: TdxDBGridMaskColumn;
    grdAccountAriseNO_1: TdxDBGridMaskColumn;
    grdAccountAriseCO_1: TdxDBGridMaskColumn;
    grdAccountAriseNO_2: TdxDBGridMaskColumn;
    grdAccountAriseCO_2: TdxDBGridMaskColumn;
    grdAccountAriseNO_3: TdxDBGridMaskColumn;
    grdAccountAriseCO_3: TdxDBGridMaskColumn;
    grdAccountAriseNO_4: TdxDBGridMaskColumn;
    grdAccountAriseCO_4: TdxDBGridMaskColumn;
    grdAccountAriseNO_5: TdxDBGridMaskColumn;
    grdAccountAriseCO_5: TdxDBGridMaskColumn;
    grdAccountAriseNO_6: TdxDBGridMaskColumn;
    grdAccountAriseCO_6: TdxDBGridMaskColumn;
    grdAccountAriseNO_7: TdxDBGridMaskColumn;
    grdAccountAriseCO_7: TdxDBGridMaskColumn;
    grdAccountAriseNO_8: TdxDBGridMaskColumn;
    grdAccountAriseCO_8: TdxDBGridMaskColumn;
    grdAccountAriseNO_9: TdxDBGridMaskColumn;
    grdAccountAriseCO_9: TdxDBGridMaskColumn;
    grdAccountAriseNO_10: TdxDBGridMaskColumn;
    grdAccountAriseCO_10: TdxDBGridMaskColumn;
    grdAccountAriseNO_11: TdxDBGridMaskColumn;
    grdAccountAriseCO_11: TdxDBGridMaskColumn;
    grdAccountAriseNO_12: TdxDBGridMaskColumn;
    grdAccountAriseCO_12: TdxDBGridMaskColumn;
    grdAccountAriseNO_13: TdxDBGridMaskColumn;
    grdAccountAriseCO_13: TdxDBGridMaskColumn;
    grdAccountAriseNO_14: TdxDBGridMaskColumn;
    grdAccountAriseCO_14: TdxDBGridMaskColumn;
    grdAccountAriseNO_15: TdxDBGridMaskColumn;
    grdAccountAriseCO_15: TdxDBGridMaskColumn;
    grdAccountAriseNO_16: TdxDBGridMaskColumn;
    grdAccountAriseCO_16: TdxDBGridMaskColumn;
    grdAccountAriseNO_17: TdxDBGridMaskColumn;
    grdAccountAriseCO_17: TdxDBGridMaskColumn;
    grdAccountAriseNO_18: TdxDBGridMaskColumn;
    grdAccountAriseCO_18: TdxDBGridMaskColumn;
    grdAccountAriseNO_19: TdxDBGridMaskColumn;
    grdAccountAriseCO_19: TdxDBGridMaskColumn;
    grdAccountAriseNO_20: TdxDBGridMaskColumn;
    grdAccountAriseCO_20: TdxDBGridMaskColumn;
    grdAccountAriseNO_21: TdxDBGridMaskColumn;
    grdAccountAriseCO_21: TdxDBGridMaskColumn;
    grdAccountAriseNO_22: TdxDBGridMaskColumn;
    grdAccountAriseCO_22: TdxDBGridMaskColumn;
    grdAccountAriseNO_23: TdxDBGridMaskColumn;
    grdAccountAriseCO_23: TdxDBGridMaskColumn;
    grdAccountAriseNO_24: TdxDBGridMaskColumn;
    grdAccountAriseCO_24: TdxDBGridMaskColumn;
    grdAccountAriseNO_25: TdxDBGridMaskColumn;
    grdAccountAriseCO_25: TdxDBGridMaskColumn;
    grdAccountAriseNO_26: TdxDBGridMaskColumn;
    grdAccountAriseCO_26: TdxDBGridMaskColumn;
    grdAccountAriseNO_27: TdxDBGridMaskColumn;
    grdAccountAriseCO_27: TdxDBGridMaskColumn;
    grdAccountAriseNO_28: TdxDBGridMaskColumn;
    grdAccountAriseCO_28: TdxDBGridMaskColumn;
    grdAccountAriseNO_29: TdxDBGridMaskColumn;
    grdAccountAriseCO_29: TdxDBGridMaskColumn;
    grdAccountAriseNO_30: TdxDBGridMaskColumn;
    grdAccountAriseCO_30: TdxDBGridMaskColumn;
    grdAccountAriseNO_31: TdxDBGridMaskColumn;
    grdAccountAriseCO_31: TdxDBGridMaskColumn;
    grdAccountAriseNO_32: TdxDBGridMaskColumn;
    grdAccountAriseCO_32: TdxDBGridMaskColumn;
    grdAccountAriseNO_33: TdxDBGridMaskColumn;
    grdAccountAriseCO_33: TdxDBGridMaskColumn;
    grdAccountAriseNO_34: TdxDBGridMaskColumn;
    grdAccountAriseCO_34: TdxDBGridMaskColumn;
    grdAccountAriseNO_35: TdxDBGridMaskColumn;
    grdAccountAriseCO_35: TdxDBGridMaskColumn;
    grdAccountAriseNO_36: TdxDBGridMaskColumn;
    grdAccountAriseCO_36: TdxDBGridMaskColumn;
    grdAccountAriseNO_37: TdxDBGridMaskColumn;
    grdAccountAriseCO_37: TdxDBGridMaskColumn;
    grdAccountAriseNO_38: TdxDBGridMaskColumn;
    grdAccountAriseCO_38: TdxDBGridMaskColumn;
    grdAccountAriseNO_39: TdxDBGridMaskColumn;
    grdAccountAriseCO_39: TdxDBGridMaskColumn;
    grdAccountAriseNO_40: TdxDBGridMaskColumn;
    grdAccountAriseCO_40: TdxDBGridMaskColumn;
    grdAccountAriseNO_41: TdxDBGridMaskColumn;
    grdAccountAriseCO_41: TdxDBGridMaskColumn;
    grdAccountAriseNO_42: TdxDBGridMaskColumn;
    grdAccountAriseCO_42: TdxDBGridMaskColumn;
    grdAccountAriseNO_43: TdxDBGridMaskColumn;
    grdAccountAriseCO_43: TdxDBGridMaskColumn;
    grdAccountAriseNO_44: TdxDBGridMaskColumn;
    grdAccountAriseCO_44: TdxDBGridMaskColumn;
    grdAccountAriseNO_45: TdxDBGridMaskColumn;
    grdAccountAriseCO_45: TdxDBGridMaskColumn;
    grdAccountAriseNO_46: TdxDBGridMaskColumn;
    grdAccountAriseCO_46: TdxDBGridMaskColumn;
    grdAccountAriseNO_47: TdxDBGridMaskColumn;
    grdAccountAriseCO_47: TdxDBGridMaskColumn;
    grdAccountAriseNO_48: TdxDBGridMaskColumn;
    grdAccountAriseCO_48: TdxDBGridMaskColumn;
    grdAccountAriseNO_49: TdxDBGridMaskColumn;
    grdAccountAriseCO_49: TdxDBGridMaskColumn;
    grdAccountAriseNO_50: TdxDBGridMaskColumn;
    grdAccountAriseCO_50: TdxDBGridMaskColumn;
    grdAccountAriseNO_51: TdxDBGridMaskColumn;
    grdAccountAriseCO_51: TdxDBGridMaskColumn;
    grdAccountAriseNO_52: TdxDBGridMaskColumn;
    grdAccountAriseCO_52: TdxDBGridMaskColumn;
    grdAccountAriseNO_53: TdxDBGridMaskColumn;
    grdAccountAriseCO_53: TdxDBGridMaskColumn;
    grdAccountAriseNO_54: TdxDBGridMaskColumn;
    grdAccountAriseCO_54: TdxDBGridMaskColumn;
    grdAccountAriseNO_55: TdxDBGridMaskColumn;
    grdAccountAriseCO_55: TdxDBGridMaskColumn;
    grdAccountAriseNO_56: TdxDBGridMaskColumn;
    grdAccountAriseCO_56: TdxDBGridMaskColumn;
    grdAccountAriseNO_57: TdxDBGridMaskColumn;
    grdAccountAriseCO_57: TdxDBGridMaskColumn;
    grdAccountAriseNO_58: TdxDBGridMaskColumn;
    grdAccountAriseCO_58: TdxDBGridMaskColumn;
    grdAccountAriseNO_59: TdxDBGridMaskColumn;
    grdAccountAriseCO_59: TdxDBGridMaskColumn;
    grdAccountAriseNO_60: TdxDBGridMaskColumn;
    grdAccountAriseCO_60: TdxDBGridMaskColumn;
    grdAccountAriseNO_61: TdxDBGridMaskColumn;
    grdAccountAriseCO_61: TdxDBGridMaskColumn;
    grdAccountAriseNO_62: TdxDBGridMaskColumn;
    grdAccountAriseCO_62: TdxDBGridMaskColumn;
    grdAccountAriseNO_63: TdxDBGridMaskColumn;
    grdAccountAriseCO_63: TdxDBGridMaskColumn;
    grdAccountAriseNO_64: TdxDBGridMaskColumn;
    grdAccountAriseCO_64: TdxDBGridMaskColumn;
    grdAccountAriseNO_65: TdxDBGridMaskColumn;
    grdAccountAriseCO_65: TdxDBGridMaskColumn;
    grdAccountAriseNO_66: TdxDBGridMaskColumn;
    grdAccountAriseCO_66: TdxDBGridMaskColumn;
    grdAccountAriseNO_67: TdxDBGridMaskColumn;
    grdAccountAriseCO_67: TdxDBGridMaskColumn;
    grdAccountAriseNO_68: TdxDBGridMaskColumn;
    grdAccountAriseCO_68: TdxDBGridMaskColumn;
    grdAccountAriseNO_69: TdxDBGridMaskColumn;
    grdAccountAriseCO_69: TdxDBGridMaskColumn;
    grdAccountAriseNO_70: TdxDBGridMaskColumn;
    grdAccountAriseCO_70: TdxDBGridMaskColumn;
    grdAccountAriseNO_71: TdxDBGridMaskColumn;
    grdAccountAriseCO_71: TdxDBGridMaskColumn;
    grdAccountAriseNO_72: TdxDBGridMaskColumn;
    grdAccountAriseCO_72: TdxDBGridMaskColumn;
    grdAccountAriseNO_73: TdxDBGridMaskColumn;
    grdAccountAriseCO_73: TdxDBGridMaskColumn;
    grdAccountAriseNO_74: TdxDBGridMaskColumn;
    grdAccountAriseCO_74: TdxDBGridMaskColumn;
    grdAccountAriseNO_75: TdxDBGridMaskColumn;
    grdAccountAriseCO_75: TdxDBGridMaskColumn;
    grdAccountAriseNO_76: TdxDBGridMaskColumn;
    grdAccountAriseCO_76: TdxDBGridMaskColumn;
    grdAccountAriseNO_77: TdxDBGridMaskColumn;
    grdAccountAriseCO_77: TdxDBGridMaskColumn;
    grdAccountAriseNO_78: TdxDBGridMaskColumn;
    grdAccountAriseCO_78: TdxDBGridMaskColumn;
    grdAccountAriseNO_79: TdxDBGridMaskColumn;
    grdAccountAriseCO_79: TdxDBGridMaskColumn;
    grdAccountAriseNO_80: TdxDBGridMaskColumn;
    grdAccountAriseCO_80: TdxDBGridMaskColumn;
    grdAccountAriseNO_81: TdxDBGridMaskColumn;
    grdAccountAriseCO_81: TdxDBGridMaskColumn;
    grdAccountAriseNO_82: TdxDBGridMaskColumn;
    grdAccountAriseCO_82: TdxDBGridMaskColumn;
    grdAccountAriseNO_83: TdxDBGridMaskColumn;
    grdAccountAriseCO_83: TdxDBGridMaskColumn;
    grdAccountAriseNO_84: TdxDBGridMaskColumn;
    grdAccountAriseCO_84: TdxDBGridMaskColumn;
    grdAccountAriseNO_85: TdxDBGridMaskColumn;
    grdAccountAriseCO_85: TdxDBGridMaskColumn;
    grdAccountAriseNO_86: TdxDBGridMaskColumn;
    grdAccountAriseCO_86: TdxDBGridMaskColumn;
    grdAccountAriseNO_87: TdxDBGridMaskColumn;
    grdAccountAriseCO_87: TdxDBGridMaskColumn;
    grdAccountAriseNO_88: TdxDBGridMaskColumn;
    grdAccountAriseCO_88: TdxDBGridMaskColumn;
    grdAccountAriseNO_89: TdxDBGridMaskColumn;
    grdAccountAriseCO_89: TdxDBGridMaskColumn;
    grdAccountAriseNO_90: TdxDBGridMaskColumn;
    grdAccountAriseCO_90: TdxDBGridMaskColumn;
    grdAccountAriseNO_91: TdxDBGridMaskColumn;
    grdAccountAriseCO_91: TdxDBGridMaskColumn;
    grdAccountAriseNO_92: TdxDBGridMaskColumn;
    grdAccountAriseCO_92: TdxDBGridMaskColumn;
    grdAccountAriseNO_93: TdxDBGridMaskColumn;
    grdAccountAriseCO_93: TdxDBGridMaskColumn;
    grdAccountAriseNO_94: TdxDBGridMaskColumn;
    grdAccountAriseCO_94: TdxDBGridMaskColumn;
    grdAccountAriseNO_95: TdxDBGridMaskColumn;
    grdAccountAriseCO_95: TdxDBGridMaskColumn;
    grdAccountAriseNO_96: TdxDBGridMaskColumn;
    grdAccountAriseCO_96: TdxDBGridMaskColumn;
    grdAccountAriseNO_97: TdxDBGridMaskColumn;
    grdAccountAriseCO_97: TdxDBGridMaskColumn;
    grdAccountAriseNO_98: TdxDBGridMaskColumn;
    grdAccountAriseCO_98: TdxDBGridMaskColumn;
    grdAccountAriseNO_99: TdxDBGridMaskColumn;
    grdAccountAriseCO_99: TdxDBGridMaskColumn;
    grdAccountAriseNO_100: TdxDBGridMaskColumn;
    grdAccountAriseCO_100: TdxDBGridMaskColumn;
    grdAccountAriseNO_KHAC: TdxDBGridMaskColumn;
    grdAccountAriseCO_KHAC: TdxDBGridMaskColumn;
    grdAccountAriseSOTHUTU: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdAccountAriseDblClick(Sender: TObject);
    procedure grdAccountAriseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAccountAriseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NhatKySoCaiFrm: TNhatKySoCaiFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit,dxTreeGridMenus, AnalysisFrm, HtmlHlp;


{$R *.dfm}

procedure TNhatKySoCaiFrm.FormCreate(Sender: TObject);
var
  i:Smallint;
begin
  if CurLanguage=2 then
    ElFormCaption1.Texts[0].Caption:=AnalystFrm.qryListReportENGLISH_NAME.Value+' - '+AnalystFrm.GetCaptionConditionTime
  else
    ElFormCaption1.Texts[0].Caption:=AnalystFrm.qryListReportREPORT_NAME.Value+' - '+AnalystFrm.GetCaptionConditionTime;

  Screen.Cursor:=crHourGlass;
  SetOnFormCreate(Self,0);
  for i:=0 to grdAccountArise.ColumnCount-1 do
  if grdAccountArise.Columns[i].SummaryFooterType=cstSum then
    grdAccountArise.Columns[i].SummaryFooterFormat:=TIENTE_FORMAT;
  //MainDM.qryReport.DisableControls;
  with MainDM.qryReport do
  for i:=0 to FieldCount-1 do
  begin
    if Fields[i] is TDateTimeField then (Fields[i] as TDateTimeField).DisplayFormat:=NGAYTHANG_FORMAT+' hh:mm:ss'
    else if Fields[i] is TDateField then (Fields[i] as TDateField).DisplayFormat:=NGAYTHANG_FORMAT
    else if Fields[i] is TIBOFloatField then (Fields[i] as TIBOFloatField).DisplayFormat:=TIENTE_FORMAT;
  end;
  //MainDM.qryReport.EnableControls;

  grdAccountArise.DataSource:=MainDM.dsReport;
  i:=2;
  while (Not MainDM.qrySub_1.Eof) and (i<102) do
  begin
    grdAccountArise.Bands[i].Visible:=True;
    grdAccountArise.Bands[i].Caption:=MainDM.qrySub_1.FieldByName('account_id').Value;
    
    i:=i+1;
    MainDM.qrySub_1.Next;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TNhatKySoCaiFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdAccountArise);
end;

procedure TNhatKySoCaiFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdAccountArise);
end;

procedure TNhatKySoCaiFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdAccountArise);
end;

procedure TNhatKySoCaiFrm.btnDetailClick(Sender: TObject);
begin
  IsPosted:=False;
  with MainDM do
  begin
    qryBgDocList:=qryReport;
    DocIDFieldName:='SOPHIEU';
    PeriodFieldName:='KYHT';
    BranchIDFieldName:='BRANCH_ID';

    if qryReport.RecordCount=1 then
      Suachungtu(qryReport.FieldByName('SOPHIEU').Value, qryReport.FieldByName('KYHT').AsInteger,
          qryReport.FieldByName('BRANCH_ID').Value)
    else
      Suachungtu(qryReport.FieldByName('SOPHIEU').Value, qryReport.FieldByName('KYHT').AsInteger,
          qryReport.FieldByName('BRANCH_ID').Value,True);
      
    if IsPosted then
    begin
      qryReport.DisableControls;
      qryReport.Close;
      qryReport.Open;
      qryReport.EnableControls;
    end;
  end;
end;

procedure TNhatKySoCaiFrm.grdAccountAriseDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TNhatKySoCaiFrm.grdAccountAriseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdAccountArise, Key, Shift, True,4);
end;

procedure TNhatKySoCaiFrm.grdAccountAriseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TNhatKySoCaiFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TNhatKySoCaiFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
