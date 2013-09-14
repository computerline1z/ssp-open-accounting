unit GlobalUnit;

interface
uses Windows,dxCntner,dxDBGrid,dxExEdtr,SysUtils, Registry,Forms, Controls,DB,dxDBTL,ElCaption,ActnList,
dxTL, Graphics, Classes,RichEdit,Messages,Dialogs,XLSReadWriteII,IBODataset,IniFiles,typInfo,dxLayoutControl,
CellFormats,ElCheckItemGrp,XLSUtils,SheetData, XLSFonts, BIFFRecsII,sspSendMail,ElPgCtl, dxBar,DBChart;

const
RMAIN_KEY='Software\SSP\AccV5.0';

type
  THackInplaceEdit = class(TdxInplaceEdit);

  UserRight=record
    RR:Boolean;
    IR:Boolean;
    ER:Boolean;
    DR:Boolean;
  end;
  TempInfo=record//Thong tin cua 1 phieu mau
    TempID:Integer;//Ma so cua Template
    TempName:WideString;//Ten cua phieu mau nay
    Person_Name:WideString;
    Person_Addr:WideString;
    Voucher:WideString;
    Warehouse_ID:WideString;
    SHTKNO:WideString;
    SHTKCO:WideString;
    MADTNO:WideString;
    MADTCO:WideString;
    LOAITKNO:Smallint;
    LOAITKCO:Smallint;
    YEUTONO:Smallint;
    YEUTOCO:Smallint;
    SHTKVAT:WideString;
    Comment:WideString;
    NHAPGIACOTHUE:Boolean;
    HACHTOANNT:Boolean;
    BATBUOCNHAPDT:Boolean;//Bat buoc nhap doi tuong tren master
    SOPHIEUBD :WideString;//So phieu goi ban dau ='' Insert, else edit
    KYHTBD:Smallint;

    LOAIDTCHINH:Smallint;//Loai doi tuong chinh tren master
    TENDTCHINH:WideString;//Ten doi tuong chinh
    LOAIDTPHU:Smallint;//Loai doi tuong duoi chi tiet
    TENDTPHU:WideString;//Ten doi tuong chinh
    CTMOTNO:Boolean;
    CTCOLUONG:Boolean;
    CHODUYET:Smallint;
  end;
const
  mrSSPYes   =1;
  mrSSPNo    =2;
  mrSSPClose =3;
  mrSSPCancel=4;

  MODULE_COUNT=24;
  sqlSelectDocList='SELECT distinct doc_id, period_id, doctype_id, doc_date,'
      + 'doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name,branch_id'
      + ' FROM macro_doclistky(:tuky,:denky,:username,:branch_id) ';
  sqlSelectDocListForsearch='SELECT distinct doc_id, period_id, doctype_id, doc_date, '
      + 'doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name,branch_id'
      + ' FROM macro_doclist_forsearch(:tuky,:denky,:username,:branch_id) ';
  
var
  SQLParamValueArray:array[0..100] of WideString;
  ApplicationDir:String;//Duong dan thu muc exe
  TemplatePath:WideString;//Dung de luu tru duong dan den cac file reports
  PolicyFlagChar:String;//Dung de phan biet loai BH truc tiep (D) hay loai thuong (N)
  DocFullFormCount:Smallint;
  LastModifyItemID:WideString;
  LastViewItemID:WideString;//Ma doi tuong cuoi cung trong popup

  CurObjIDFormat:WideString;//Dinh dang ma so doi tuong hien tai
  PosFirst,PosLast:Smallint;//Vi tri dau va cuoi cua dau #
  GenObjIDGrp:Boolean;    // Phat sinh so thu tu theo nhom

  isExpired:Boolean;
  BeginLoadDocID:WideString;//So phieu luc form Document load len
  BeginLoadPeriodID:Smallint;// Ky hach toan form Document luc len
  BeginLoadBranchID:widestring;
  ImportingFromXLS:Boolean;// Dang Import tu Excel, se khong kiem tra khi before post,va post error
  CurTemp:TempInfo;
  UScreenHeight, UScreenWidth:Integer;//Chieu rong va chieu cao cua man hinh cua nguoi dung
  SHTAIKHOAN:WideString;//So hieu tieu khoan (da nho nhat) sau khi goi vao form xu ly tai khoan Neu='' nghia la nhan Cancel
  SHTIEUKHOAN:WideString;//So hieu tieu khoan (da nho nhat) sau khi goi vao form xu ly tai khoan Neu='' nghia la nhan Cancel

  SophieuCantim:WideString;//So phieu can tim tu searchDlg

  SelectedPrice:Double;

  //--------------------------------------
  HDVAT_KyHT:Smallint;
  HDVAT_Sophieu,HDVAT_Person:WideString;//So phieu va ky hach toan ca HD VAT
  HDVAT_Mathang:WideString;//So phieu va ky hach toan ca HD VAT
  HDVAT_SoTTCT:integer;//So thu cua dong Hoa don VAT
  HDVAT_MASODT:WideString;//Ma so doi tuong dang phay sinh
  HDVAT_TriGia:Double;//Tri gia Hoa don dua vao mac dinh;
  HDVAT_Tienthue:Double;//Tri gia Hoa don dua vao mac dinh;
  HDVAT_LOAIHD:Smallint;//VAO, RA HAY NHAP KHAU
  HDVAT_PTGTGT:Smallint;//Tri gia Hoa don dua vao mac dinh;
  HDVAT_Ngay:TDate;//Tri gia Hoa don dua vao mac dinh;
  HDVAT_Soluong:Double;//Tri gia Hoa don dua vao mac dinh;
  HDVAT_Tygia:Double;
  HDVAT_CURRENCY_ID:widestring;
  HDVAT_ID : Smallint;
  //--------------------------------------
  SPPHATSINHRA:WideString;//So phieu ps ra khi thuc hien GenDoc...
  CurLanguage:Smallint;//=0: Khong lam gi het,1:Tieng Viet,2:Tieng Anh
  OldKeyWord:WideString;// Tu khoa da search xong
  SearchResult:Boolean;//Kq tim kiem

  ATUNGAYHMKP,ADENNGAYHMKP:TDate;//Cac bien dung de truywen ytham so vao so cai ..HMKP
  AMANGUONHMKP:WideString;
  SQLSelectHMKP:String;

  IsMotNoNhieuCo:Boolean;//=True La loai phieu 1 no nhieu co, false la nguoi lai
  IsPosted:Boolean;//Cho biet khi goi truy xuat nguoc co thuc hien thay doi khong de thuc hien Refresh
  IsCloseQryPopup:Boolean;// Cho phep Close cac qry Popup hay khong ?
  LockingData:Boolean;
  MaxTemplateID:integer;

  IsChangeDoc_ID:Boolean;
  FilterAccType:Smallint;

  SSPUserRight : array[1..255] of UserRight;

  ErrImportMsg:String;//Noi dung loi do Import

  MsgText : WideString; // Noi dung cua Message
  MsgDetail : WideString; // Noi dung cua Message
  MsgType : Smallint; // Noi dung cua Message
  MsgICon : Smallint; // Noi dung cua Message
  MsgTitle : WideString; // Noi dung cua Message

  IsChangeDataDocType:Boolean;//Co viec thay doi tren docType phai refresh lai
  //--Lien quan den module day hoc--------------------

  isAllocating:Boolean;//Cho biet co phai dang thuc hien phan bo khong ?
  //Neu dang phan bo thi khong thuc hien cac tinh toan khi chang value
  //Vi dieu nay se lam cho chuong trinh cham, co nguy co loop

  vpItemID, vpItemName, vpSubItem_1, vpSubItem_2, vpSubItem_3:WideString;//MST, Diachi, Khi chon tu Popup
  vpOtypeID:Smallint;// Ma loai cua doi tuong
  vpBranch_id, vpDocBranch_id,vpLoginBranch : WideString; // Ma chi nhanh - Thinh added 080906
  vpBranch_IsMin,vpBranch_Filter_Type :Smallint;
  vpBranch_Name : WideString;
  vpIsFormTROpening:Boolean;
  vpIsTransfered:Boolean;

  vpObjectIdFilter:WideString;

  pub_checking_report : Boolean;
  IsSearching:Boolean;//Neu dang search
  PreObjTypeID:Integer;//Ma loai doi tuong khac trong Popup khi khong phai la master detail voi dsPAcc
  IsChangeList:Boolean;//Co thay doi gi de danh muc khong de biet Refresh Popup

  TIENTE_FORMAT:String;//DINH DANG KIEU DU LIEU TIEN TE
  NGOAITE_FORMAT:String;//DINH DANG KIEU DU LIEU TIEN TE
  CACHESO_FORMAT:String;//DINH DANG KIEU DU LIEU TIEN TE
  SOLUONG_FORMAT:String;//DINH DANG KIEU DU LIEU SO LUONG
  NGAYTHANG_FORMAT:String;//DINH DANG KIEU SO LIEU NGAY THANG

  optAutoRemindInstock:Boolean;//Nhac nho khi xuat kho am
  optAutoUpdVATValue:Boolean;//Tu dong cap nhat so tien trong but toan thue theo tien trong hoa don VAT
    IsChangeInvoiceType :Smallint;//
    VATTaxTotal:Double; //Tong tien thue trong cac hoa don cua 1 chung tu ke toan
  ItemsContent : widestring;
  optRemindBeforeSave:Boolean;
  optSERINUMBER:WideString;//So seri dung mac dinh trong chuong trinh
  optRowCountFirstPage:Integer;//So dong trong trang dau
  optRowCountOtherPage:Integer;//So dong trong cac trang khac 2->
  optFontSize:Smallint;//Co chu duoc dung trong chuong trinh
  optMauHDgTGTdefault:WideString;//so mau hoa don gtgt thuong gap
  optAutoGenDocNo:Smallint;//Tu dong phat sinh so phieu
  optTuoinoQuahan:Smallint;//Mac dinh la tai khoan truoc do

  optConfirmDelete:Smallint;//Hoi xac nhan truoc khi xoa 1 du lieu nao do
  optReloadRptPeriod:Integer;//Khoang thoi gian load lai du lieu cua cac bao cao
  optIsFilterPGood:Boolean;//Loc nhung mat hang phu hop voi tk tuong ung thoi
  optAutoInsert:Boolean;//Tu dong them dong moi khi go enter tai dong cuoi cot cuoi

  optMsgDelay:Integer;//Thoi gian hien thi message
  optCheckMsgPeriod:Integer;//Chu ky kiem tra message
  optCheckMsgOnLoad:Boolean;//Tu dong kiem tra khi load chuong trinh len
  optKhoangcachDL:Smallint;//Kc load du lieu len man hinh chinh
  optUseCurDate:Smallint;
  optSearchMode:Integer;
  optShowMsgBox:Boolean;

  optInCoMaSoChitiet:Boolean;
  optReConnectTime:Smallint;
  prmChophepXuatam: Boolean;
  prmChophepTonToiThieu: Boolean;
  prmDirectDiscount: Boolean;
  prmPPXUATKHO: SMALLINT;
  prmPPPBCPSXC: SMALLINT;
  prmSDGIABAN: SMALLINT;
  prmBBNHAPYT: SMALLINT;
  prmCHOSUAGIABAN: SMALLINT;
  prmSDGIAMUA: SMALLINT;
  prmCHOSUAGIAMUA: SMALLINT;
  prmSDGIAKH: SMALLINT;
  prmCHOSUAGIAKH: SMALLINT;
  prmSDGIABQ: SMALLINT;
  prmCHOSUAGIABQ: SMALLINT;
  prmCHOSUATHANHTIEN: SMALLINT;
  prmAllowChangeType:Smallint;
  prmRangbuocNgay:Boolean;//rang buoc ngay lap phieu phai thuoc trong thang
  InPhieuDangDK:Boolean;//=True in dang dinh khoan (Thu muc PhieuDK) , False No Co (Thu muc PhieuNC)
  AutoUpdateInvDocNote: Boolean; // Tu dong ghep chi tiet hoa don => noi dung phieu
  prmUseDocumentLog:Boolean;//Su dung chuc nang ghi nhat ky
  prmUSEUPPERCASE:Boolean;//Su dung Upcase trong tat ca ma so
  prmDECIMALDG_LEN:Smallint;//Chieu dai so thap phan trong du lieu don gia
  prmDECIMALTT_LEN:Smallint;//Chieu dai so thap phan trong du lieu thanh tien
  //Thinh them
  optSDGIAMUAGANNHAT:boolean;
  DTPB_ID:WideString;
  DTPB_OTYPE_ID:Integer;
  PreDocTypeLoadFilter : Smallint;
  arrDKTKNO_BDV:Array[1..5] of String;
  arrDKTKCO_BDV:Array[1..5] of String;
  arrDKTKNO_KBDV:Array[1..5] of String;
  arrDKTKCO_KBDV:Array[1..5] of String;

  procedure AllFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  procedure CallErrorForm(FormName: String);
  procedure InitGlobalValueReg();
  procedure InitGlobalValueDB();
  function ReplaceToFileName(AStr: String) : String;
  procedure LoadCaption(AControl: TControl);
  procedure SetCaption(AControl: TControl; WhenFormShow:Boolean=True);
  procedure SetVisible(AControl: TControl);
  procedure SetDisplayFormat(AControl: TControl);
  function GetProperty(comp:TComponent;prop:string):Widestring;
  function IsNotHasData(AField:TField): Boolean;
  function IsHasData(AField:TField): Boolean;
  procedure LoadCaptionFormInfo(AControl: TControl);
  procedure SetProperty(comp:TComponent;{const }prop : string ; value: Widestring);
  function HasProperty(comp:TComponent;prop:string):boolean;

  procedure SetOnFormCreate(AControl: TControl; Flag :Smallint =1);
  function ShowMessageUnicode(MsgID: Smallint; AMsgDetail:WideString=''; AMsgType : Integer=0) :Integer;
  function ShowMessageUniText(AMsgText: WideString; AMsgType : Integer=0) :Integer;
  function GetMessage(MsgID: Smallint) :WideString;
  function SearchDataNext(AGrid:TObject;keyword:WideString):Boolean;
  function SearchNextInGrid(AGrid:TdxDBGrid;keyword:WideString):Boolean;
  function SearchBackInGrid(AGrid:TdxDBGrid;keyword:WideString):Boolean;
  function SearchNextInTree(ATree:TdxDBTreeList;keyword:WideString):Boolean;
  function SearchBackInTree(ATree:TdxDBTreeList;keyword:WideString):Boolean;
  function SearchDataBack(AGrid:TObject;keyword:WideString):Boolean;
  procedure ExportToExcel(AGrid:TObject);
  procedure ExportToHTML(AGrid:TObject);
  procedure ExportToXML(AGrid:TObject);
  function NotUnLockData(AEditPeriod,KindOfExcution : Smallint):Boolean;
  
  procedure AppendToTextFile(AFileName:string; AString: String);
  procedure SaveToTextFile(AFileName:string; AString: String);
  procedure ProcessKeyDownInGrid(AGrid : TdxDBGrid; var Key: Word; Shift: TShiftState;AInsFlag:Boolean;LastFocusCol:Integer=0);
  procedure CopyARow(AGrd: TdxDBGrid);
  procedure CopyAppendARow(AGrd: TdxDBGrid);
  procedure ProcessKeyDownInTreeList(ATreeList : TdxDBTreeList; var Key: Word; Shift: TShiftState);
  procedure SendKeyOpenPopup;
  procedure SearchData(AGrid: TObject);
  procedure ReplaceData(AGrid: TObject);
  function ReadValueFromInniFile(ANameItem:String;AGroupName:String;ADefault:String):String;
  function WriteValueToInniFile(ANameItem:String;AGroupName:String;AValue:String):String;
  function ParserString(AStr:String;ASubStr:String):TStringList;
  function SendMail(ToAddr:String;AttFileName:String):Boolean;

  function SSPEncode(AStr:string):String;
  function SSPDecode(AStr:string):String;
  function MyDateToStr(ngay : TDateTime):String;
  function MyDateTimeToStr(ngay : TDateTime):String;
  function RepStr(WS : WideString):String;

implementation

uses MainDataMdl, GlobalInterface, MsgDlgForm, ErrorListForm,
  LookupFrm, MessageForm, CaptionListForm, StrUtils, dxDBCtrl,SimpleSecurityLibrary,
  ReplaceForm, DMInterface, Chart, TeEngine, MainForm;

function MyDateTimeToStr(ngay : TDateTime):String;
begin
  Result:=FormatDateTime('yyyy-MM-dd hh:mm:ss',ngay);
end;

function MyDateToStr(ngay : TDateTime):String;
begin
  Result:=FormatDateTime('yyyy-MM-dd',ngay);
end;

function RepStr(WS : WideString):String;
begin
  Result:=UTF8Encode(WS);
  Result:=StringReplace(Result,'''','''''',[rfReplaceAll]);
end;
procedure SetOnFormCreate(AControl: TControl; Flag :Smallint =1);
begin
  ApplyUserInterface(AControl);
  if (optFontSize<>8) then
    if (AControl is TForm) then
      (AControl as TForm).Font.Size:=optFontSize;

  if (AControl is TForm) then
    (AControl as TForm).KeyPreview:=True;
  //SetLanguage(AControl);
end;

function ReplaceToFileName(AStr: String) : String;
begin
  AStr:=StringReplace(AStr,'\','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,'/','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,':','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,'*','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,'?','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,'"','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,'<','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,'>','-',[rfReplaceAll]);
  AStr:=StringReplace(AStr,'|','-',[rfReplaceAll]);
  Result:=AStr;
end;


procedure InitGlobalValueReg();
var
  Reg : TRegistry;
begin
  optSDGIAMUAGANNHAT := TRUE;
  ImportingFromXLS:=False;
  optAutoGenDocNo := 1;
  optConfirmDelete:= 1;
  optReloadRptPeriod:=0;
  optFontSize:= 8;
  TIENTE_FORMAT := '###,###,###,###';
  SOLUONG_FORMAT := '###,###,###,###.##';
  NGAYTHANG_FORMAT := 'dd/MM/yyyy';
  optSearchMode := 0;
  optShowMsgBox :=True;
  InPhieuDangDK := False;
  optMauHDgTGTdefault := '';
  optSERINUMBER := '';
  optAutoUpdVATValue:=True;
  optRowCountFirstPage := 42;
  optRowCountOtherPage := 57;
  optInCoMaSoChitiet := False;
  optReConnectTime:=0;
  optMsgDelay := 3000;
  optCheckMsgPeriod := 60;
  optCheckMsgOnLoad := True;
  optAutoRemindInstock :=True;
  optTuoinoQuahan:=0;
  optIsFilterPGood:=True;
  optAutoInsert:=True;
  optKhoangcachDL:=31;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption',True) then
    begin
      //Thinh them
      optSDGIAMUAGANNHAT := Reg.ReadBool('SDGIAMUAGANNHAT');
      optAutoGenDocNo := Reg.ReadInteger('AutoGenDocNo');
      optConfirmDelete:= Reg.ReadInteger('ConfirmDelete');
      optReloadRptPeriod:= Reg.ReadInteger('ReloadRptPeriod');
      optFontSize:= Reg.ReadInteger('FontSize');
      TIENTE_FORMAT := Reg.ReadString('TIENTE_FORMAT');
      NGOAITE_FORMAT := Reg.ReadString('NGOAITE_FORMAT');
      CACHESO_FORMAT := Reg.ReadString('CACHESO_FORMAT');
      SOLUONG_FORMAT := Reg.ReadString('SOLUONG_FORMAT');
      NGAYTHANG_FORMAT := Reg.ReadString('NGAYTHANG_FORMAT');
      optSearchMode := Reg.ReadInteger('SEARCHMODE');
      optShowMsgBox := (Reg.ReadInteger('ShowMsgBox')=1);
      InPhieuDangDK := (Reg.ReadInteger('DANGPHIEUINRA')=1);
      optMauHDgTGTdefault := Reg.ReadString('MAUHOADONGTGT');
      optSERINUMBER := Reg.ReadString('SERINUMBER');
      optAutoUpdVATValue:= (Reg.ReadInteger('AutoUpdVATValue')=1);
      optRowCountFirstPage := Reg.ReadInteger('RowCountFirstPage');
      optRowCountOtherPage := Reg.ReadInteger('RowCountOtherPage');
      optInCoMaSoChitiet := (Reg.ReadInteger('InCoMaSoChitiet')=1);
      optReConnectTime :=Reg.ReadInteger('ReConnectTime');
      optMsgDelay := Reg.ReadInteger('MsgDelay');
      optCheckMsgPeriod := Reg.ReadInteger('CheckMsgPeriod');
      optCheckMsgOnLoad := (Reg.ReadInteger('CheckMsgOnLoad')=1);
      optAutoRemindInstock := (Reg.ReadInteger('AutoRemindInstock')=1);
      optTuoinoQuahan := Reg.ReadInteger('TuoinoQuahan');
      optIsFilterPGood := (Reg.ReadInteger('IsFilterPGood')=1);
      optAutoInsert := (Reg.ReadInteger('AutoInsert')=1);
      optKhoangcachDL:= Reg.ReadInteger('KhoangCachDL');
      optRemindBeforeSave := (Reg.ReadInteger('RemindBeforeSave')=1);
      Reg.CloseKey;
    end;
  except
      optCheckMsgOnLoad := False;
  end;
  Reg.Free;

  sdxPanelText := UTF8Decode('Kéo tên cột vào ô này để phân nhóm');
  //dxMVGroupByBoxText := sdxPanelText;

  UseDelphiDateTimeFormats:=True;
  ShortDateFormat := NGAYTHANG_FORMAT;
end;

procedure InitGlobalValueDB();
begin
  
  
  with MainDM do
  begin
    qryParams.Open;
    if qryParams.RecordCount=0 then
    begin
      qryParams.Insert;
      qryParams.Post;
    end;

    prmPPXUATKHO := qryParamsPPXUATKHO.AsInteger;
    prmPPPBCPSXC := qryParamsPPPBCPSXC.AsInteger;
    prmSDGIABAN :=qryParamsSDGIABAN.AsInteger;
    prmChophepXuatam :=qryParamsALLOW_NEGINSTOCK.AsInteger=1;
    {QuynhND - Qui dinh ton kho toi thieu}
    prmChophepTonToiThieu := qryParamsALLOW_MIN_INSTOCK.AsInteger = 1;
    prmDirectDiscount := qryParamsDIRECT_DISCOUNT.AsInteger=1;
    prmBBNHAPYT := qryParamsBBNHAPYT.AsInteger;
    prmCHOSUAGIABAN :=qryParamsCHOSUAGIABAN.AsInteger;
    prmSDGIAMUA :=qryParamsSDGIAMUA.AsInteger;
    prmCHOSUAGIAMUA :=qryParamsCHOSUAGIAMUA.AsInteger;
    prmSDGIAKH :=qryParamsSDGIAKH.AsInteger;
    prmCHOSUAGIAKH :=qryParamsCHOSUAGIAKH.AsInteger;
    prmSDGIABQ :=qryParamsSDGIABQ.AsInteger;
    prmCHOSUAGIABQ :=qryParamsCHOSUAGIABQ.AsInteger;
    prmCHOSUATHANHTIEN :=qryParamsCHOSUATHANHTIEN.AsInteger;
    prmAllowChangeType :=qryParamsALLOWCHANGETYPE.AsInteger;
    prmRangbuocNgay:= (qryParamsRANGBUOCNGAY.AsInteger=1);
    BeginPeriod := qryParamsBEGIN_YEAR.Value*12+qryParamsBEGIN_MONTH.Value;
    prmUseDocumentLog:=(qryParamsUSEDOCUMENTLOG.AsInteger=1);
    prmUSEUPPERCASE:=(qryParamsUSEUPPERCASE.AsInteger=1);
    prmDECIMALDG_LEN:=qryParamsDECIMALDG_LEN.AsInteger;
    prmDECIMALTT_LEN:=qryParamsDECIMALTT_LEN.AsInteger;

    qryParams.Close;
  end;
end;

procedure LoadCaption(AControl: TControl);
//Load caption
var i, j: Integer;
  temp: TComponent;
begin
  //delete all
  MainDM.qryCaption.Close;
  MainDM.qryCaption.ParamByName('FORM_NAME').Value:=AControl.Name;
  MainDM.qryCaption.Open;
 
    for i := AControl.ComponentCount - 1 downto 0 do
    begin
      temp := AControl.Components[i];
      if HasProperty(temp, 'caption') then
      begin
        if temp.InheritsFrom(TAction) then Continue;

        if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name,[]) then
        begin
          MainDM.qryCaption.Edit;
          //MainDM.qryCaptionCAPTION_VN.Value:=GetProperty(temp, 'caption');
          MainDM.qryCaptionCAPTION_DEF.Value:=GetProperty(temp, 'caption');

          MainDM.qryCaption.Post;
        end
        else
        begin
          MainDM.qryCaption.Insert;
          MainDM.qryCaptionFORM_NAME.Value:=AControl.Name;
          MainDM.qryCaptionCONTROL_NAME.Value:=temp.Name;
          //if tieng viet
          MainDM.qryCaptionCAPTION_VN.Value:=GetProperty(temp, 'caption');
          MainDM.qryCaptionCAPTION_DEF.Value:=MainDM.qryCaptionCAPTION_VN.Value;

          MainDM.qryCaption.Post;
        end;

        if temp.ClassName = 'TElRadioGroup' then
        begin
          for j:=0 to TElRadioGroup(temp).Items.Count-1 do
          begin
            if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
            begin
              MainDM.qryCaption.Edit;
              MainDM.qryCaptionCAPTION_DEF.Value:=TElRadioGroup(temp).Items[j];
              MainDM.qryCaption.Post;
            end
            else
            begin
              MainDM.qryCaption.Insert;
              MainDM.qryCaptionFORM_NAME.Value:=AControl.Name;
              MainDM.qryCaptionCONTROL_NAME.Value:=temp.Name+'['+IntToStr(j)+']';
              MainDM.qryCaptionCAPTION_VN.Value:=TElRadioGroup(temp).Items[j];
              MainDM.qryCaptionCAPTION_DEF.Value:=TElRadioGroup(temp).Items[j];
              MainDM.qryCaption.Post;
            end;
          end;
        end;
      end
      else if temp.ClassName = 'TElFormCaption' then
      begin
        for j:=0 to TElFormCaption(temp).ComponentCount-1 do
        begin
          if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
          begin
            MainDM.qryCaption.Edit;
            MainDM.qryCaptionCAPTION_DEF.Value:=TElFormCaption(temp).Texts[j].Caption;
            MainDM.qryCaption.Post;
          end
          else
          begin
            MainDM.qryCaption.Insert;
            MainDM.qryCaptionFORM_NAME.Value:=AControl.Name;
            MainDM.qryCaptionCONTROL_NAME.Value:=temp.Name+'['+IntToStr(j)+']';
            MainDM.qryCaptionCAPTION_VN.Value:=TElFormCaption(temp).Texts[j].Caption;
            MainDM.qryCaptionCAPTION_DEF.Value:=TElFormCaption(temp).Texts[j].Caption;
            MainDM.qryCaption.Post;
          end;
        end;
      end
      else if temp.ClassName = 'TdxDBGrid' then
      if TdxDBGrid(temp).ShowBands then
      begin
        for j:=0 to TdxDBGrid(temp).Bands.VisibleCount-1 do
        begin
          if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
          begin
            MainDM.qryCaption.Edit;
            MainDM.qryCaptionCAPTION_DEF.Value:=TdxDBGrid(temp).Bands[j].Caption;
            MainDM.qryCaption.Post;
          end
          else
          begin
            MainDM.qryCaption.Insert;
            MainDM.qryCaptionFORM_NAME.Value:=AControl.Name;
            MainDM.qryCaptionCONTROL_NAME.Value:=temp.Name+'['+IntToStr(j)+']';
            MainDM.qryCaptionCAPTION_VN.Value:=TdxDBGrid(temp).Bands[j].Caption;
            MainDM.qryCaptionCAPTION_DEF.Value:=TdxDBGrid(temp).Bands[j].Caption;
            MainDM.qryCaption.Post;
          end;
        end;
      end
      else if temp.ClassName = 'TDBChart' then
      begin
        if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name,[]) then
        begin
          MainDM.qryCaption.Edit;
          MainDM.qryCaptionCAPTION_DEF.Value:=TDBChart(temp).Title.Text.Text;
          MainDM.qryCaption.Post;
        end
        else
        begin
          MainDM.qryCaption.Insert;
          MainDM.qryCaptionFORM_NAME.Value:=AControl.Name;
          MainDM.qryCaptionCONTROL_NAME.Value:=temp.Name;
          MainDM.qryCaptionCAPTION_VN.Value:=TDBChart(temp).Title.Text.Text;
          MainDM.qryCaptionCAPTION_DEF.Value:=TDBChart(temp).Title.Text.Text;
          MainDM.qryCaption.Post;
        end;

        for j:=0 to TDBChart(temp).SeriesCount-1 do
        begin
          if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
          begin
            MainDM.qryCaption.Edit;
            MainDM.qryCaptionCAPTION_DEF.Value:=TDBChart(temp).Series[j].Title;
            MainDM.qryCaption.Post;
          end
          else
          begin
            MainDM.qryCaption.Insert;
            MainDM.qryCaptionFORM_NAME.Value:=AControl.Name;
            MainDM.qryCaptionCONTROL_NAME.Value:=temp.Name+'['+IntToStr(j)+']';
            MainDM.qryCaptionCAPTION_VN.Value:=TDBChart(temp).Series[j].Title;
            MainDM.qryCaptionCAPTION_DEF.Value:=TDBChart(temp).Series[j].Title;
            MainDM.qryCaption.Post;
          end;
        end;
      end;
    end;
end;

procedure SetDisplayFormat(AControl: TControl);
var
  i:integer;
begin
  with AControl do
  for i:=0 to ComponentCount-1 do
  if  Components[i].InheritsFrom(TField) then
  if Components[i].Tag>-1 then
  begin
    if Components[i] is TDateField  then
    begin
      if Components[i].Tag <>1 then
        (Components[i] as TDateField).DisplayFormat := NGAYTHANG_FORMAT;
    end
    else
    if  (Components[i] is TFloatField)  then
    begin
      if Components[i].Tag =1 then//So luong
        (Components[i] as TFloatField).DisplayFormat := SOLUONG_FORMAT
      else if Components[i].Tag =3 then//Ngoai te
        (Components[i] as TFloatField).DisplayFormat := NGOAITE_FORMAT
      else if Components[i].Tag =4 then//Cac he so
        (Components[i] as TFloatField).DisplayFormat := CACHESO_FORMAT
      else
        (Components[i] as TFloatField).DisplayFormat := TIENTE_FORMAT;
    end;    
  end;
end;

procedure SetVisible(AControl: TControl);
var i,j: Integer;
  temp: TComponent;
  ppi:PPropInfo;
  obj:TObject;
  S:string;
  f:TField;
begin
  {MainDM.qryCountInVisible.Close;
  MainDM.qryCountInVisible.ParamByName('FORM_NAME').Value:=AControl.Name;
  MainDM.qryCountInVisible.Open;
  if MainDM.qryCountInVisibleSL.AsInteger=0 then
  begin
    MainDM.qryCountInVisible.Close;
    Exit;
  end;
  MainDM.qryCountInVisible.Close;}

  MainDM.qryCaption.Close;
  MainDM.qryCaption.ParamByName('FORM_NAME').Value:=AControl.Name;
  MainDM.qryCaption.Open;

    for i := 0 to AControl.ComponentCount - 1 do
    begin
      temp := AControl.Components[i];
      if (temp is TdxDBGrid) then
      begin
        (temp as TdxDBGrid).LookAndFeel:=lfFlat;
        Continue;
      end
      else if (temp is TdxDBTreeList) then
      begin
        (temp as TdxDBTreeList).LookAndFeel:=lfFlat;
        Continue;
      end;

      if (temp.InheritsFrom(TdxInplaceCheckEdit)) then
        THackInplaceEdit(temp).StyleController := InterfaceDM.chkStyleController
      else if (temp.InheritsFrom(TdxInplaceEdit)) then
        THackInplaceEdit(temp).StyleController := InterfaceDM.edtStyleController;

          if ((ColorReadOnly<>TColor(16777215)) or (ColorBB<>TColor(16777215))) then
          if (temp.InheritsFrom(TdxInplaceEdit)) then
          begin
            //THackInplaceEdit(temp).StyleController := FControlStyle;
            if THackInplaceEdit(temp).ReadOnly then
              THackInplaceEdit(temp).Color := ColorReadOnly;
            ppi := GetPropInfo(temp, 'DataSource');
            if Assigned(ppi) and (ppi.PropType^.Kind = tkClass) then
            begin
              obj := GetObjectProp(temp, ppi);
              if Assigned(obj) and (obj is TDatasource) then
                if Assigned(TDatasource(obj).DataSet) then
                begin
                  ppi := GetPropInfo(temp, 'DataField');
                  if Assigned(ppi) then
                  begin
                    if ppi.PropType^.Kind = tkString then
                      s := GetStrProp(temp, ppi)
                    else
                      if ppi.PropType^.Kind = tkWString then
                        s := GetWideStrProp(temp, ppi);
                    f := TDatasource(obj).DataSet.FindField(s);
                    if Assigned(f) then
                      if f.Required then
                        THackInplaceEdit(temp).Color := ColorBB;
                  end;
                end;
            end
          end
          else
            if (temp.InheritsFrom(TdxDBTreeListColumn)) then
            begin
              f := TdxDBTreeListColumn(temp).Field;
              if Assigned(f) and f.Required then
                TdxDBTreeListColumn(temp).Color := ColorBB;
              if TdxDBTreeListColumn(temp).DisableEditor then
                TdxDBTreeListColumn(temp).Color := ColorReadOnly
              else if Assigned(f) and f.ReadOnly then
                TdxDBTreeListColumn(temp).Color := ColorReadOnly;
            end;

      if temp.ClassName = 'TElRadioGroup' then
        for j:=0 to TElRadioGroup(temp).Items.Count-1 do
        if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
          if MainDM.qryCaptionCAPTION_VISIBLE.AsInteger=0 then
            (temp as TElRadioGroup).Controls[j].Visible:=False;
          

      if Not MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name,[]) then Continue;

      if MainDM.qryCaptionCAPTION_VISIBLE.AsInteger=1 then Continue;

      if (temp is TdxBarButton) then
          (temp as TdxBarButton).Visible:=ivNever
      else if (temp is TdxBarSubItem) then
          (temp as TdxBarSubItem).Visible:=ivNever
      else if (temp is TdxLayoutItem) then
          (temp as TdxLayoutItem).Visible:=False
      else if (temp is TElTabSheet) then
          (temp as TElTabSheet).TabVisible:=False
      else if (AControl.Components[i] is TdxDBTreeListColumn) then
      begin
          (AControl.Components[i] as TdxDBTreeListColumn).Visible:=False;
          (AControl.Components[i] as TdxDBTreeListColumn).DisableCustomizing:=True;
      end
      else if (GetPropInfo(AControl.Components[i],'Visible')<>nil) then
        SetPropValue(AControl.Components[i],'Visible',False);
    end;

  MainDM.qryCaption.Close;

end;

procedure SetCaption(AControl: TControl; WhenFormShow:Boolean=True);
var i, j: Integer;
  temp: TComponent;
begin
  if (WhenFormShow and (CurLanguage=0)) then Exit;

  MainDM.qryCaption.Close;
  MainDM.qryCaption.ParamByName('FORM_NAME').Value:=AControl.Name;
  MainDM.qryCaption.Open;

    for i := AControl.ComponentCount - 1 downto 0 do
    begin
      temp := AControl.Components[i];
      if HasProperty(temp, 'caption') then
      begin
        if temp.ClassName = 'TAction' then Continue;

        if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name,[]) then
        begin
          if CurLanguage=0 then
          begin
            if Not MainDM.qryCaptionCAPTION_DEF.IsNull then
              SetProperty(temp,'caption',MainDM.qryCaptionCAPTION_DEF.Value);
          end
          else if CurLanguage=1 then
          begin
            if Not MainDM.qryCaptionCAPTION_VN.IsNull then
              SetProperty(temp,'caption',MainDM.qryCaptionCAPTION_VN.Value);
          end
          else
            if Not MainDM.qryCaptionCAPTION_ENG.IsNull then
              SetProperty(temp,'caption',MainDM.qryCaptionCAPTION_ENG.Value);
        end;

        if temp.ClassName = 'TElRadioGroup' then
        for j:=0 to TElRadioGroup(temp).Items.Count-1 do
        if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
        begin
          if CurLanguage=0 then
          begin
            if Not MainDM.qryCaptionCAPTION_DEF.IsNull then
              TElRadioGroup(temp).Items[j]:=MainDM.qryCaptionCAPTION_DEF.Value;
          end
          else if CurLanguage=1 then
          begin
            if Not MainDM.qryCaptionCAPTION_VN.IsNull then
              TElRadioGroup(temp).Items[j]:=MainDM.qryCaptionCAPTION_VN.Value;
          end
          else
            if Not MainDM.qryCaptionCAPTION_ENG.IsNull then
              TElRadioGroup(temp).Items[j]:=MainDM.qryCaptionCAPTION_ENG.Value;
        end;
      end
      else if temp.ClassName = 'TElFormCaption' then
      begin
        for j:=0 to TElFormCaption(temp).ComponentCount-1 do
        begin
          if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
          begin
            if CurLanguage=0 then
            begin
              if Not MainDM.qryCaptionCAPTION_DEF.IsNull then
                TElFormCaption(temp).Texts[j].Caption:=MainDM.qryCaptionCAPTION_DEF.Value;
            end
            else if CurLanguage=1 then
            begin
              if Not MainDM.qryCaptionCAPTION_VN.IsNull then
                TElFormCaption(temp).Texts[j].Caption:=MainDM.qryCaptionCAPTION_VN.Value;
            end
            else
              if Not MainDM.qryCaptionCAPTION_ENG.IsNull then
                TElFormCaption(temp).Texts[j].Caption:=MainDM.qryCaptionCAPTION_ENG.Value;
          end;
        end;
      end
      else if temp.ClassName = 'TdxDBGrid' then
      if TdxDBGrid(temp).ShowBands then
      begin
        for j:=0 to TdxDBGrid(temp).Bands.VisibleCount-1 do
        begin
          if MainDM.qryCaption.Locate('CONTROL_NAME',temp.Name+'['+IntToStr(j)+']',[]) then
          begin
            if CurLanguage=0 then
            begin
              if Not MainDM.qryCaptionCAPTION_DEF.IsNull then
                TdxDBGrid(temp).Bands[j].Caption:=MainDM.qryCaptionCAPTION_DEF.Value;
            end
            else if CurLanguage=1 then
            begin
              if Not MainDM.qryCaptionCAPTION_VN.IsNull then
                TdxDBGrid(temp).Bands[j].Caption:=MainDM.qryCaptionCAPTION_VN.Value;
            end
            else
              if Not MainDM.qryCaptionCAPTION_ENG.IsNull then
                TdxDBGrid(temp).Bands[j].Caption:=MainDM.qryCaptionCAPTION_ENG.Value;
          end;
        end;
      end;
    end;

  MainDM.qryCaption.Close;
end;

procedure LoadCaptionFormInfo(AControl: TControl);
begin
	with TCaptionListFrm.Create(AControl) do
  try
    CurForm := AControl;
    ShowModal;
  finally
    Free;
  end;
end;


function GetProperty(comp:TComponent;prop:string): widestring;
var
	ppi:PPropInfo;
begin
	ppi:=getPropInfo(comp.classInfo,prop);
   if ppi<>nil then
   	result:=GetWideStrProp(comp,ppi)
   else
   	result:='';
end;

function IsNotHasData(AField:TField): Boolean;
begin
  Result:=AField.IsNull;

  if Not Result then
  if AField.DataType=ftWideString then
  begin
    Result:=AField.Value='';
  end;
end;

function IsHasData(AField:TField): Boolean;
begin
  Result:=Not AField.IsNull;

  if Result then
  if AField.DataType=ftWideString then
  begin
    Result:=AField.Value<>'';
  end;
end;

//Assign the value value to prop property of comp component
procedure SetProperty(comp:TComponent;{const }prop : string; value:Widestring);
var
	ppi:PPropInfo;
begin
	if value<>'' then
   begin
   	ppi:=getPropInfo(comp.classInfo,prop);
      if ppi<>nil then SetWideStrProp(comp,ppi,value);
   end;
end;

//True if prop property exists for comp component
function HasProperty(comp:TComponent;prop:string):boolean;
begin
	result:=(getPropInfo(comp.classInfo,prop)<>nil) and (comp.name<>'');
end;


function SearchDataNext(AGrid:TObject;keyword:WideString):Boolean;
begin
  Result:=False;
  IsSearching:=True;
  if (AGrid.ClassName = 'TdxDBGrid') then
  begin
    (AGrid as TdxDBGrid).DataSource.DataSet.DisableControls;
    Result:=SearchNextInGrid(AGrid as TdxDBGrid,keyword);
    (AGrid as TdxDBGrid).DataSource.DataSet.EnableControls;
  end
  else if (AGrid.ClassName = 'TdxDBTreeList') then
  begin
    (AGrid as TdxDBTreeList).DataSource.DataSet.DisableControls;
    Result:=SearchNextInTree(AGrid as TdxDBTreeList,keyword);
    (AGrid as TdxDBTreeList).DataSource.DataSet.EnableControls;
  end;

  IsSearching:=False;
end;

function SearchNextInGrid(AGrid:TdxDBGrid;keyword:WideString):Boolean;
var
  str,substr:WideString;
begin
  Result:=false;
  substr:=WideLowerCase(keyword);
  AGrid.GotoNext(True);
  while not AGrid.IsEOF do
  begin
    if not AGrid.FocusedField.IsNull then
    begin
      {if (AGrid.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, AGrid.FocusedField.Value))
      else
        str:= WideLowerCase(AGrid.FocusedField.Value);}
      str:= WideLowerCase(AGrid.GetDisplayValue(AGrid.FocusedNode,AGrid.FocusedAbsoluteIndex));

      if Pos(substr,str)>0 then
      begin
        Result:=true;
        Break;
      end;
    end;
    AGrid.GotoNext(True);
  end;
end;
function SearchBackInGrid(AGrid:TdxDBGrid;keyword:WideString):Boolean;
var
  str,substr:WideString;
begin
  Result:=false;
  substr:=WideLowerCase(keyword);
  AGrid.GotoPrev(True);
  while not AGrid.IsBOF do
  begin
    if not AGrid.FocusedField.IsNull then
    begin
      {if (AGrid.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, AGrid.FocusedField.Value))
      else
        str:= WideLowerCase(AGrid.FocusedField.Value);}
      str:= WideLowerCase(AGrid.GetDisplayValue(AGrid.FocusedNode,AGrid.FocusedAbsoluteIndex));
      if Pos(substr,str)>0 then
      begin
        Result:=true;
        Break;
      end;
    end;
    AGrid.GotoPrev(True);
  end;
end;


function SearchNextInTree(ATree:TdxDBTreeList;keyword:WideString):Boolean;
var
  str,substr:WideString;
begin
  Result:=false;
  ATree.GotoNext(True);
  substr:=WideLowerCase(keyword);
  while not ATree.IsEOF do
  begin
    if not ATree.FocusedField.IsNull then
    begin
      {if (ATree.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, ATree.FocusedField.Value))
      else
        str:= WideLowerCase(ATree.FocusedField.Value);}
      str:= WideLowerCase(ATree.GetDisplayValue(ATree.FocusedNode,ATree.FocusedAbsoluteIndex));

      if Pos(substr,str)>0 then
      begin
        Result:=true;
        Break;
      end;
    end;
    ATree.GotoNext(True);
  end;
end;

function SearchBackInTree(ATree:TdxDBTreeList;keyword:WideString):Boolean;
var
  str,substr:WideString;
begin
  Result:=false;
  ATree.GotoPrev(True);
  substr:=WideLowerCase(keyword);
  while not ATree.IsBOF do
  begin
    if not ATree.FocusedField.IsNull then
    begin
      {if (ATree.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, ATree.FocusedField.Value))
      else
        str:= WideLowerCase(ATree.FocusedField.Value);}
      str:= WideLowerCase(ATree.GetDisplayValue(ATree.FocusedNode,ATree.FocusedAbsoluteIndex));
      if Pos(substr,str)>0 then
      begin
        Result:=true;
        Break;
      end;
    end;
    ATree.GotoPrev(True);
  end;
end;

function SearchDataBack(AGrid:TObject;keyword:WideString):Boolean;
begin
  Result:=false;
  IsSearching:=True;

  if (AGrid.ClassName = 'TdxDBGrid') then
  begin
    (AGrid as TdxDBGrid).DataSource.DataSet.DisableControls;
    Result:=SearchBackInGrid(AGrid as TdxDBGrid,keyword);
    (AGrid as TdxDBGrid).DataSource.DataSet.EnableControls;
  end
  else if (AGrid.ClassName = 'TdxDBTreeList') then
  begin
    (AGrid as TdxDBTreeList).DataSource.DataSet.DisableControls;
    Result:=SearchBackInTree(AGrid as TdxDBTreeList,keyword);
    (AGrid as TdxDBTreeList).DataSource.DataSet.EnableControls;
  end;

  IsSearching:=False;
end;
procedure ExportToExcel(AGrid:TObject);
begin
  if (AGrid.ClassName <> 'TdxDBGrid') then exit;
  with MainDM do
  begin
//    try
      SaveDlg.FilterIndex:=1;
      SaveDlg.DefaultExt := 'xls';
      if SaveDlg.Execute then
        (AGrid as TdxDBGrid).SaveToXLS(SaveDlg.FileName, true);
//    except
//      ShowMessageUnicode(55);
//    end;
  end;
end;
procedure ExportToHTML(AGrid:TObject);
begin
  if (AGrid.ClassName <> 'TdxDBGrid') then exit;
  with MainDM do
  begin
    try
      SaveDlg.FilterIndex:=2;
      SaveDlg.DefaultExt := 'html';
      if SaveDlg.Execute then
        (AGrid as TdxDBGrid).SaveToHTML(SaveDlg.FileName, true);
    finally
    end;
  end;
end;
procedure ExportToXML(AGrid:TObject);
begin
  if (AGrid.ClassName <> 'TdxDBGrid') then exit;
  with MainDM do
  begin
    try
      SaveDlg.FilterIndex:=3;
      SaveDlg.DefaultExt := 'xml';
      if SaveDlg.Execute then
        (AGrid as TdxDBGrid).SaveToXML(SaveDlg.FileName, true);
    finally
    end;
  end;
end;

function GetMessage(MsgID: Smallint) :WideString;
begin
  MainDM.qryMsgList.Open;
  With MainDM do
  if qryMsgList.Locate('MESSAGE_ID',MsgID,[]) then
  begin
    if CurLanguage=2 then
    begin
      if qryMsgListMESSAGE_ENG.IsNull then
        Result:=''
      else
        Result:=qryMsgListMESSAGE_ENG.Value;
      if qryMsgListTITLE_ENG.IsNull then
        MsgTitle:=''
      else
        MsgTitle:=qryMsgListTITLE_ENG.Value;
    end
    else
    begin
      if qryMsgListMESSAGE_VN.IsNull then
        Result:=''
      else
        Result:=qryMsgListMESSAGE_VN.Value;
      if qryMsgListTITLE_VN.IsNull then
        MsgTitle:=''
      else
        MsgTitle:=qryMsgListTITLE_VN.Value;
    end;
    MsgICon:=qryMsgListIMAGE_ID.AsInteger;
  end
  else
  begin
    Result:='';
    MsgTitle:='SSP Accounting';
    MsgICon:=1;
  end
end;

function ShowMessageUnicode(MsgID: Smallint; AMsgDetail:WideString=''; AMsgType : Integer=0) :Integer ;
begin
  MsgText := GetMessage(MsgID);
  MsgType := AMsgType;
  MsgDetail:=AMsgDetail;
  if ((AMsgType=0) and (Not optShowMsgBox)) then
  if MainFrm<>nil then
  begin
    MainFrm.ElFormCaption1.Texts[3].Caption:=MsgText;
    Exit;
  end;

  if MainFrm<>nil then
    MainFrm.ElFormCaption1.Texts[3].Caption:='';

  with TMsgDlgFrm.Create(Screen.ActiveForm) do
  try
    Result:= ShowModal;
  finally
    Free;
  end
end;

function ShowMessageUniText(AMsgText: WideString; AMsgType : Integer=0) :Integer;
begin
  MsgText := AMsgText;
  MsgType := AMsgType;

  if ((AMsgType=0) and (Not optShowMsgBox)) then
  if MainFrm<>nil then
  begin
    MainFrm.ElFormCaption1.Texts[3].Caption:=MsgText;
    Exit;
  end;

  if MainFrm<>nil then
    MainFrm.ElFormCaption1.Texts[3].Caption:='';

  with TMsgDlgFrm.Create(Screen.ActiveForm) do
  try
    Result:= ShowModal;
  finally
    Free;
  end
end;       

function NotUnLockData(AEditPeriod,KindOfExcution : Smallint):Boolean;
var
  KindOfExcutionRight:Boolean;
begin
  Result := False;
  case KindOfExcution of
    0://Insert
      KindOfExcutionRight:=SSPUserRight[14].IR;
    1://Edit
      KindOfExcutionRight:=SSPUserRight[14].ER;
    else //Delete
      KindOfExcutionRight:=SSPUserRight[14].DR;
  end;
  MainDM.qrySysLog.Open;
  if Not MainDM.qrySysLog.Locate('PERIOD_ID',AEditPeriod,[]) then Exit;
  if MainDM.qrySysLogSTATUS_LOG.AsInteger=1 then
  begin
    if KindOfExcutionRight=False then
    begin
      ShowMessageUnicode(115);
      Result := True;
      exit;
    end;
    if ShowMessageUnicode(116,'', 4)=6 then
      MainDM.acUnlockData.Execute
    else
    begin
      Result := True;
      exit;
    end;
  end;
end;
procedure CallErrorForm(FormName: String);
begin
  with TErrorListFrm.Create(Application) do
  try
    AcctiveFormName:=FormName;
    ShowModal;
  finally
    Free;
  end;
end;
procedure AllFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Sender.ClassName);
end;

procedure SaveToTextFile(AFileName:string; AString: String);
var
  TF: TextFile;
begin
  AssignFile(TF, AFileName);
  Rewrite(TF);
  Writeln(TF,PChar(AString));
  CloseFile(TF);
end;

procedure AppendToTextFile(AFileName:string; AString: String);
var
  Str:String;
  ts:TStringList;
begin
  ts:=TStringList.Create;
  try
    ts.LoadFromFile(AFileName);
  except
    ts.Text:='';
  end;
  Str:=ts.Text+AString;

  SaveToTextFile(AFileName,Str);
end;
procedure CopyARow(AGrd: TdxDBGrid);
var
  i:smallint;
  val:array[0..100] of Variant;
  flagnull:array[0..100] of Boolean;
begin
  for i:=0 to AGrd.VisibleColumnCount-1 do
  begin
    val[i]:=AGrd.VisibleColumns[i].Field.Value;
    flagnull[i]:=AGrd.VisibleColumns[i].Field.IsNull;
  end;
  AGrd.DataSource.DataSet.Insert;
  for i:=0 to AGrd.VisibleColumnCount-1 do
    if Not flagnull[i] then
    AGrd.VisibleColumns[i].Field.Value:=val[i];
end;

procedure CopyAppendARow(AGrd: TdxDBGrid);
var
  i:smallint;
  val:array[0..100] of Variant;
  flagnull:array[0..100] of Boolean;
begin
  for i:=0 to AGrd.VisibleColumnCount-1 do
  begin
    val[i]:=AGrd.VisibleColumns[i].Field.Value;
    flagnull[i]:=AGrd.VisibleColumns[i].Field.IsNull;
  end;
  AGrd.DataSource.DataSet.Append;
  for i:=0 to AGrd.VisibleColumnCount-1 do
    if Not flagnull[i] then
      AGrd.VisibleColumns[i].Field.Value:=val[i];
end;


procedure ProcessKeyDownInGrid(AGrid : TdxDBGrid; var Key: Word; Shift: TShiftState;AInsFlag:Boolean;LastFocusCol:Integer=0);
var
  EditPos : TCharRange;
begin
  if LastFocusCol=0 then
    LastFocusCol:=AGrid.VisibleColumnCount-1;

  if Not (AGrid.DataSource.DataSet as TIBOQuery).ReadOnly then
  if AInsFlag then
  if optAutoInsert then
    if Key=VK_return then
    if AGrid.FocusedColumn=LastFocusCol then
    if AGrid.State=tsEditing then
    if AGrid.FocusedNode.Index=AGrid.DataSource.DataSet.RecordCount-1 then
    begin
      AGrid.DataSource.DataSet.Append;
      Key:=0;
      Exit;
    end;
  if Not (AGrid.DataSource.DataSet as TIBOQuery).ReadOnly then
  if AInsFlag then
  if optAutoInsert then
    if (Key=VK_INSERT)and (ssCtrl in Shift) and (ssAlt in Shift) then
    begin
      CopyAppendARow(AGrid);
      Key:=0;
      Exit;
    end;

  if Not (AGrid.DataSource.DataSet as TIBOQuery).ReadOnly then
  if AInsFlag then
  if optAutoInsert then
    if (Key=VK_INSERT)and (ssAlt in Shift) then
    begin
      CopyARow(AGrid);
      Key:=0;
      Exit;
    end;

  if AGrid.Tag=1 then
  begin
    AGrid.Tag:=0;
    Key:=0;
    exit;
  end;
  if Key=VK_Return then
  begin
    if (AGrid.State<>tsEditing) then
    begin
      AGrid.ShowEditor;
      if (AGrid.State=tsEditing) then
        Key:=0;
    end;
    Exit;
  end;

  if Key=VK_LEFT then
  begin
    if (AGrid.State=tsEditing) then
    begin
      SendMessage(AGrid.InplaceEditor.Handle, EM_EXGETSEL, 0, LongInt(@EditPos));
      if ((EditPos.cpMin=0) and (EditPos.cpMax=0)) then
      begin
        AGrid.CloseEditor;
        keybd_event(VK_LEFT,0,0,0);
        keybd_event(VK_LEFT,0,KEYEVENTF_KEYUP,0);
      end;

      Exit;
    end
    else
      if AGrid.FocusedColumn=0 then
      begin
        if AGrid.FocusedNode.Expanded then
          AGrid.FocusedNode.Collapse(True)
        else
          if AGrid.FocusedNode.Parent<>nil then
          begin
            AGrid.FocusedNode.Parent.Focused:=True;
            Key:=0;
            Exit;
          end;
      end;
  end;

  if Key = VK_RIGHT then
  if (AGrid.State=tsEditing) then
  begin
    SendMessage(AGrid.InplaceEditor.Handle, EM_EXGETSEL, 0, LongInt(@EditPos));
    if ((EditPos.cpMin= Length(AGrid.EditingText)) and (EditPos.cpMax=Length(AGrid.EditingText))) then
    begin
      AGrid.CloseEditor;
      keybd_event(VK_RIGHT,0,0,0);
      keybd_event(VK_RIGHT,0,KEYEVENTF_KEYUP,0);
    end;

    Exit;
  end;
  if ((Key = VK_F8) or ((Key=70) and (ssCtrl in Shift))) then
    SearchData(AGrid);

  if Key = VK_F3 then
    SearchDataNext(AGrid,OldKeyWord)
  else if Key = VK_F4 then
    SearchDataBack(AGrid,OldKeyWord)
  else if Key = VK_F5 then
    AGrid.DataSource.DataSet.Refresh;
end;


procedure SearchData(AGrid: TObject);
begin
  Lookup.SearchGrid(AGrid);
end;

procedure ReplaceData(AGrid: TObject);
begin
  ReplaceFrm.ReplaceGrid(AGrid);
end;

procedure SendKeyOpenPopup;
begin
  keybd_event(VK_MENU,0,0,0);
  keybd_event(VK_UP,0,0,0);
  keybd_event(VK_UP,0,KEYEVENTF_KEYUP,0);
  keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
end;

procedure ProcessKeyDownInTreeList(ATreeList : TdxDBTreeList; var Key: Word; Shift: TShiftState);
var
  EditPos : TCharRange;
begin
  if Key=VK_Return then
  begin
    Key:=0;
    //Luu y nen xu ly them truong hop Cot do Bi Disable Editor
    if (ATreeList.State=tsEditing) or (ATreeList.VisibleColumns[ATreeList.FocusedColumn].DisableEditor) then
    begin
      if ATreeList.FocusedColumn<>ATreeList.VisibleColumnCount-1 then
      begin
        Key:=VK_RIGHT;
        keybd_event(VK_Return,0,0,0);
        keybd_event(VK_Return,0,KEYEVENTF_KEYUP,0);
      end;
    end
    else
      ATreeList.ShowEditor;

    Exit;
  end;
  if Key=VK_LEFT then
  begin
    if (ATreeList.State=tsEditing) then
    begin
      SendMessage(ATreeList.InplaceEditor.Handle, EM_EXGETSEL, 0, LongInt(@EditPos));
      if ((EditPos.cpMin=0) and (EditPos.cpMax=0)) then
      begin
        ATreeList.CloseEditor;
        keybd_event(VK_LEFT,0,0,0);
        keybd_event(VK_LEFT,0,KEYEVENTF_KEYUP,0);
      end;

      Exit;
    end
    else
      if ATreeList.FocusedColumn=0 then
      begin
        if ATreeList.FocusedNode.Expanded then
          ATreeList.FocusedNode.Collapse(True)
        else
          if ATreeList.FocusedNode.Parent<>nil then
            ATreeList.FocusedNode.Parent.Focused:=True;
      end;
  end;

  if Key = VK_RIGHT then
  begin
    if (ATreeList.State=tsEditing) then
    begin
      SendMessage(ATreeList.InplaceEditor.Handle, EM_EXGETSEL, 0, LongInt(@EditPos));
      if ((EditPos.cpMin= Length(ATreeList.EditingText)) and (EditPos.cpMax=Length(ATreeList.EditingText))) then
      begin
        ATreeList.CloseEditor;
        keybd_event(VK_RIGHT,0,0,0);
        keybd_event(VK_RIGHT,0,KEYEVENTF_KEYUP,0);
      end;

      Exit;
    end
    else
      if ATreeList.FocusedColumn=0 then
        if ATreeList.FocusedNode.HasChildren then
          if Not ATreeList.FocusedNode.Expanded then
          begin
            ATreeList.FocusedNode.Expand(True);
            Key:=0;
            Exit;
          end;
  end;

 if ((Key = VK_F8) or ((Key=70) and (ssCtrl in Shift))) then
    SearchData(ATreeList);

  if Key = VK_F3 then
    SearchDataNext(ATreeList,OldKeyWord);
  if Key = VK_F4 then
    SearchDataBack(ATreeList,OldKeyWord);
end;

function ReadValueFromInniFile(ANameItem:String;AGroupName:String;ADefault:String):String;
var
  MyIniFile: TIniFile;
begin
  MyIniFile := TIniFile.Create(ApplicationDir +'\options.ini');
  Result := MyIniFile.ReadString(AGroupName , ANameItem, ADefault);
  Result := Trim(Result);
  MyIniFile.Free;
end;
function WriteValueToInniFile(ANameItem:String;AGroupName:String;AValue:String):String;
var
  MyIniFile: TIniFile;
begin
  MyIniFile := TIniFile.Create(ApplicationDir +'\options.ini');
  MyIniFile.WriteString(AGroupName , ANameItem, AValue);
  MyIniFile.Free;
end;

function ParserString(AStr:String;ASubStr:String):TStringList;
var
  rs:TStringList;
  p:Integer;
begin
  rs:=TStringList.Create;
  while AStr<>'' do
  begin
    p:=Pos(ASubStr,AStr);
    if p=0 then
    begin
      rs.Add(AStr);
      AStr:='';
    end
    else
    begin
      rs.Add(copy(AStr,1,p-1));
      AStr:=Copy(AStr,p+1,Length(AStr));
    end;
  end;
  
  Result:=rs;
end;

function SendMail(ToAddr:String;AttFileName:String):Boolean;
begin
  //Result:=False;
  with TMAPIMail.Create(Screen.ActiveForm) do
  try
    Attachments.Add(AttFileName);
    if ToAddr<>'' then
      recipients.Add(ToAddr);
    EditDialog := true;
    Send;
  finally
    Free;
  end;
  Result:=True;
end;

function SSPEncode(AStr:string):String;
const
  StartKey = 11878;
var
  security:TSecurity;
begin
  security := TSecurity.Create(20279, 61994);
  try
    Result := security.Encrypt(AStr, StartKey);
  finally
    security.Free;
  end;
end;

function SSPDecode(AStr:string):String;
const
  StartKey = 11878;
var
  security:TSecurity;
begin
  security := TSecurity.Create(20279, 61994);
  try
    Result := security.Decrypt(AStr, StartKey);
  finally
    security.Free;
  end;
end;

end.



