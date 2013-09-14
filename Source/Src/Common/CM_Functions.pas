unit CM_Functions;

interface

uses SysUtils, Windows, Messages, Forms, ExtCtrls, StdCtrls, Controls, Graphics,
  dxDBGrid, Classes, Registry, RichEdit, dxLayoutControl, dxFilter,
  dxGrFltr, dxDBTL, DB, IBODataset, ElPopBtn,
  dxTL, Variants, MsgDlgForm,  ActnList, NumWords, NumW, ConfigApp,
  ElStrUtils, dxEdLib, dxExEdtr, dxInspct, dxDBCtrl, dxBar, Unicode, Math;

type
  TdxInplacePopupEditCrack = class(TdxInplacePopupEdit);
  TActionType = (itInsert, itAppend, itInsertCopy, itAppendCopy,
    itSingleDeletion, itMultiDeletion, itSingleSelection, itMultiSelection);
procedure ShowMDIForm(FormClass: TFormClass; var Form; APermission: smallint);
procedure CloseMDIForm(f: TForm);
function ShowModalForm(FormClass: TFormClass; var Form): integer;
function ShowCustomGridPopupMenu(Sender: TdxDBGrid; BeTree: boolean; Button:
  TMouseButton): integer;

function GetAllChild(ATree: TdxDBTreeList; APNode: TdxTreeListNode;
  ASelectedCol: integer): string;
function GetGridValues(AGrid: TdxDBGrid; APNode: TdxDBGridNode; ASelectedCol:
  integer): string;
function ConvertIntToBit(var AInt: Integer): integer;
function NumInWords(CountryCode, LanguageCode: Integer; ANumber: Double):
  Widestring;
procedure ProcessGridEnterEvent(Sender: TObject; AInsertAct: TAction; APostAct:
  TAction = nil);

procedure SetCapitalCode(AComp: TComponent; ACharCase: smallint);
procedure SendMsgBroadcast(Msg: Cardinal; wParam, lParam: integer);

{dung cac ham de xu ly phim tren luoi}
function ProcessKeyDownOnGrid(Sender: TObject; var Key: Word; Shift:
  TShiftState; AInsAct: TBasicAction = nil; AForm: TForm = nil;
  APopup: boolean = false): boolean;
function OnPopUpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState):
  integer;
function OnClickExecute(Sender: TObject): integer;

function PopupProcess(AForm: TForm; APopup: boolean; Sender: TObject; var Key:
  Word; Shift: TShiftState): boolean; overload;
function PopupProcess(AForm: TForm; APopup: boolean; AGrid: TObject): boolean;
overload;
procedure CopyARow(ADataset: TDataset; AAppend: boolean = false);

procedure DrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: WideString; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);

procedure DecodeTag(ATag: integer; var AModuleID, APermission: smallint);
function ExtractPermission(ATag: integer): smallint;
function EncodeTag(AModuleID, APermission: smallint): integer;
function CheckValidNumber( S: WideString; R: WideString='0'):WideString;

{-----------------------------------------------------------------------------
  Procedure: InitPopupControl
  Author:    quantd
  Date:      18-Dec-2003
  Arguments: APopOwner: TObject;  popupedit
             APopForm: TForm;  Form chua popupcontrol
             APopCtrlName: string;  ten popupcontrol
             ARefresh: boolean cho biet co refresh du lieu khi init hay khong
  Result:    None
-----------------------------------------------------------------------------}
procedure InitPopupControl(APopCtrlName: string;
  APopForm: TForm; var APopOwner: TObject; ASize: double = 2; AEditor: TControl
  = nil);
const
  WM_USER_HIDE_BACKGROUND = WM_USER + 100;
  WM_USER_SHOW_BACKGROUND = WM_USER + 101;
  WM_USER_SET_CHILDCAPTION = WM_USER + 102;
  WM_USER_FILTER = WM_USER + 103;
  WM_USER_GROUP = WM_USER + 104;
  WM_USER_SYNC_LIST = WM_USER + 105;
  WM_USER_CLOSE_FORM = WM_USER + 106;
  WM_USER_COPY_NOTE = WM_USER + 107;
  WM_USER_REFRESH = WM_USER + 108;
  WM_USER_PERMISSION = WM_USER + 109;
  WM_USER_SHOWGRID = WM_USER + 110;
  WM_USER_SUMMARYFOOTER = WM_USER + 111;

  StSummaryItems: array[TdxSummaryType] of string = ('Để trống', 'Tổng',
    'Nhỏ nhất', 'Lớn nhất', 'Đếm', 'Trung bình');

implementation
uses Dialogs, dxTreeGridMenus, SecurityLibrary, TypInfo;

{-----------------------------------------------------------------------------
  Procedure: ShowMDIForm
  Author:    ndhinh
  Date:      18-Apr-2002
  Arguments: FormClass: TFormClass; var Form
  Result:    None
-----------------------------------------------------------------------------}


function CheckValidNumber(S: WideString; R: WideString='0'):WideString;
var temp :double;
    ErrorCode : integer;
begin
   Val(S,temp,ErrorCode);
   if ErrorCode<>0 then
     Result:=R
   else
     Result:=S;  
end;

procedure ShowMDIForm(FormClass: TFormClass; var Form; APermission: smallint);
begin
  if not Assigned(TForm(Form)) then
  begin
    Application.CreateForm(FormClass, Form);
    SendMessage(Application.MainForm.Handle, WM_USER_HIDE_BACKGROUND, 1,
      LongInt(Form));
    TForm(Form).Tag := APermission;
    TForm(Form).Show;
  end
  else
  begin
    if TForm(Form).WindowState = wsMinimized then
      TForm(Form).WindowState := wsMaximized
    else
      TForm(Form).BringToFront;
    SendMessage(Application.MainForm.Handle, WM_USER_HIDE_BACKGROUND, 0, 0);
  end;
end;
{-----------------------------------------------------------------------------
  Procedure: ShowModalForm
  Author:    tdquan
  Date:      09-May-2002
  Arguments: FormClass: TFormClass; var Form
  Result:    None
-----------------------------------------------------------------------------}

function ShowModalForm(FormClass: TFormClass; var Form): integer;
begin
  Application.CreateForm(FormClass, Form);
  with TForm(Form) do
  try
    Result := ShowModal;
  finally
    Free;
  end;
end;

function ShowCustomGridPopupMenu(Sender: TdxDBGrid; BeTree: boolean; Button:
  TMouseButton): integer;
begin
  if Button <> mbRight then
  begin
    result := 0;
    Exit;
  end;
  if TdxPopupMenuManager.Instance(not
    BeTree).ShowGridPopupMenu(TdxDBGrid(Sender)) then
  begin
    result := 1;
    Exit;
  end
  else
    result := 2;
end;

procedure SendKey(Key: Word);
begin
  keybd_event(Key, 0, 0, 0);
  keybd_event(Key, 0, KEYEVENTF_KEYUP, 0);
end;



function GetAllChild(ATree: TdxDBTreeList; APNode: TdxTreeListNode;
  ASelectedCol: integer): string;
var
  ii, VCount: integer;
begin
  Result := '';
  if (Atree <> nil) and (APNode <> nil)
    and (ASelectedCol >= 0) and (ASelectedCol < ATree.ColumnCount) then
    with ATree do
    begin
      Result :=
        QuotedStr(UTF8Encode(VarToWideStr(APNode.Values[ASelectedCol])));
      VCount := APNode.Count - 1;
      for ii := 0 to VCount do
        Result := Result + ',' + GetAllChild(ATree, APNode.Items[ii],
          ASelectedCol);
    end;
end;

function ConvertIntToBit(var AInt: Integer): integer;
var
  exp, q, r: integer;
begin
  q := AInt;
  exp := 1;
  Result := 0;
  while q > 0 do
  begin
    r := q mod 10;
    if (r <> 0) and (r <> 1) then
    begin
      Result := 71; //1000111
      AInt := 1000000;
      break;
    end;
    q := q div 10;
    Result := Result + r * exp;
    exp := exp * 2;
  end;
end;

function GetGridValues(AGrid: TdxDBGrid; APNode: TdxDBGridNode; ASelectedCol:
  integer): string;
var
  ii: integer;
begin
  Result := '';
  if APNode <> nil then
  begin
    if APNode.HasChildren then
      for ii := 0 to APNode.Count - 1 do
      begin
        if APNode.Items[ii].HasChildren then
          Result := Result + GetGridValues(nil, APNode.Items[ii] as
            TdxDBGridNode, ASelectedCol)
        else
          Result := Result + VarToStr(APNode.Items[ii].Values[ASelectedCol]);
      end
    else
      Result := Result + VarToStr(APNode.Values[ASelectedCol]);
  end
  else if AGrid <> nil then
  begin
    for ii := 0 to AGrid.Count - 1 do
    begin
      if AGrid.Items[ii].HasChildren then
        Result := Result + GetGridValues(nil, AGrid.Items[ii] as
          TdxDBGridNode, ASelectedCol)
      else
        Result := Result + VarToStr(AGrid.Items[ii].Values[ASelectedCol]);
    end;
  end;
end;

procedure CloseMDIForm(f: TForm);
begin
  SendMessage(Application.MainForm.Handle, WM_USER_SHOW_BACKGROUND, 0,
    LongInt(f));
end;

function NumInWords(CountryCode, LanguageCode: Integer; ANumber: Double):
  Widestring;
var
  str: widestring;
  l: integer;
begin
  InWords.SelectLocale(CountryCode, LanguageCode);
  if LanguageCode = LANG_VIETNAMESE then
    Result := Utf8Decode(InWords.EMoney(ANumber, false))
  else
    Result := InWords.EMoney(ANumber, false);
  str := WideUpperCase(WideExtractStr(Result, 0, 1));
  l := WideStrLen(PWideChar(Result));
  Result := str + WideExtractStr(Result, 2, l - 1);
end;

function ProcessKeyDownOnGrid(Sender: TObject; var Key: Word; Shift:
  TShiftState; AInsAct: TBasicAction = nil; AForm: TForm = nil; APopup: boolean
  = false):
  boolean;
var
  obj: TCustomdxTreeListControl;
  EditPos: TCharRange;
begin
  Result := false;

  if Sender.InheritsFrom(TCustomdxTreeListControl) then
    obj := (Sender as TCustomdxTreeListControl)
  else
    Exit;

  Result := PopupProcess(AForm, APopup, Sender, Key, Shift);
  if Result then
    Exit;

  if (aoEditing in obj.Options) then
  begin
    if Key = VK_RETURN then
    begin
      if obj.FocusedColumn = (obj.VisibleColumnCount - 1) then
        if obj.FocusedNode = obj.Items[obj.Count - 1] then
          if Assigned(AInsAct) then
          begin
            {append}
            AInsAct.Tag := Ord(itAppend);
            Key := 0;
            AInsAct.Execute;
            obj.FocusedColumn := 0;
            obj.ShowEditor;
          end;
      if (Key <> 0) then
      begin
        if (obj.State <> tsEditing) then
        begin
          obj.ShowEditor;
          if (obj.State = tsEditing) then
            Key := 0;
        end;
      end;
      Exit;
    end;
    if (Key = VK_INSERT) and (ssAlt in Shift) then
    begin
      if Assigned(AInsAct) then
      begin
        if (ssCtrl in Shift) then
          AInsAct.Tag := Ord(itAppendCopy)
        else
          AInsAct.Tag := Ord(itInsertCopy);
        Key := 0;
        AInsAct.Execute;
        obj.FocusedColumn := 0;
        obj.ShowEditor;
        AInsAct.Tag := Ord(itInsertCopy);
      end;
      Exit;
    end;
  end;

  if obj.State = tsEditing then
  begin
    if Key = VK_LEFT then
    begin
      SendMessage(obj.InplaceEditor.Handle, EM_EXGETSEL, 0,
        LongInt(@EditPos));
      if ((EditPos.cpMin = 0) and (EditPos.cpMax = 0)) then
      begin
        obj.CloseEditor;
        keybd_event(VK_LEFT, 0, 0, 0);
        keybd_event(VK_LEFT, 0, KEYEVENTF_KEYUP, 0);
      end;
      Exit;
    end;
    if Key = VK_RIGHT then
    begin
      SendMessage(obj.InplaceEditor.Handle, EM_EXGETSEL, 0,
        LongInt(@EditPos));
      if ((EditPos.cpMin = Length(obj.InplaceEditor.GetEditingText)) and
        (EditPos.cpMax = Length(obj.InplaceEditor.GetEditingText))) then
      begin
        obj.CloseEditor;
        keybd_event(VK_RIGHT, 0, 0, 0);
        keybd_event(VK_RIGHT, 0, KEYEVENTF_KEYUP, 0);
      end;
      Exit;
    end
  end
  else
  begin
    if (obj.FocusedNode <> nil) then
    begin
      if Key = VK_RIGHT then
      begin
        if (obj.FocusedColumn = (obj.VisibleColumnCount - 1)) then
          if not obj.FocusedNode.Expanded then
          begin
            obj.FocusedNode.Expand(false);
            Key := 0;
            Exit;
          end;
      end;
      if Key = VK_LEFT then
      begin
        if (obj.FocusedColumn = 0) then
          if obj.FocusedNode.Expanded then
            obj.FocusedNode.Collapse(false)
          else
          begin
            obj.GotoPrev(true);
            Key := 0;
            Exit;
          end;
      end;
    end;
  end;
end;

procedure SetCapitalCode(AComp: TComponent; ACharCase: smallint);
var
  ppi: PPropInfo;
  i: integer;
begin
  if not Assigned(AComp) then
    Exit;
  if AComp.Tag = 1 then
  begin
    ppi := getPropInfo(TComponent(AComp).classInfo, 'CharCase');
    if Assigned(ppi) and (ppi^.PropType^.Kind = tkEnumeration) then
    begin
      case ACharcase of
        1: SetEnumProp(AComp, ppi, 'ecLowerCase');
        2: SetEnumProp(AComp, ppi, 'ecNormal');
        3: SetEnumProp(AComp, ppi, 'ecUpperCase');
      end;
    end;
  end;
  if AComp.ComponentCount > 0 then
  begin
    for i := 0 to AComp.ComponentCount - 1 do
      SetCapitalCode(AComp.Components[i], ACharCase);
  end;
end;

procedure InitPopupControl(APopCtrlName: string;
  APopForm: TForm; var APopOwner: TObject; ASize: double; AEditor: TControl);
var
  ppi: PPropInfo;
  AControl: TControl;
begin
  if not (Assigned(APopOwner) or APopOwner.InheritsFrom(TControl) or
    Assigned(APopForm)) then
    Exit;
  ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupControl');
  if Assigned(ppi) and (ppi^.PropType^.Kind = tkClass) then
  begin
    AControl := TControl(GetOrdProp(APopOwner, ppi));
    if not Assigned(AControl) then
    begin
      AControl := TControl(APopForm.FindComponent(APopCtrlName));
      SetOrdProp(APopOwner, ppi, Integer(AControl));
      ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupAutoSize');
      if Assigned(ppi) then
        SetOrdProp(APopOwner, ppi, Integer(False));
      ppi := getPropInfo(TComponent(APopOwner).classInfo,
        'PopupFormBorderStyle');
      if Assigned(ppi) then
        SetEnumProp(APopOwner, ppi, 'pbsSysPanel');

      ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupWidth');
      if Assigned(ppi) then
        SetOrdProp(APopOwner, ppi, 200 + Floor(100 * Asize));

      ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupHeight');
      if Assigned(ppi) then
        SetOrdProp(APopOwner, ppi, 200 + Floor(50 * Asize));

      if Assigned(AEditor) then
        if AEditor.InheritsFrom(TCustomdxTreeListControl) then
        begin
          if Assigned(TCustomdxTreeListControl(AEditor).InplaceEditor) then
          begin
            TCustomdxTreeListControl(AEditor).CloseEditor;
            TCustomdxTreeListControl(AEditor).ShowEditor;
          end;
        end
        else if AEditor.InheritsFrom(TCustomdxInspector) then
          if Assigned(TCustomdxInspector(AEditor).InplaceEditor) then
          begin
            TCustomdxInspector(AEditor).HideEditor;
            TCustomdxInspector(AEditor).ShowEditor;
          end;
    end;
  end;
end;

procedure SetChildCaption();
begin
  SendMessage(Application.MainForm.Handle, WM_USER_SET_CHILDCAPTION, 0, 0);
end;

procedure ProcessGridEnterEvent(Sender: TObject; AInsertAct: TAction; APostAct:
  TAction);
begin
  if Assigned(APostAct) then
    APostAct.Execute;
  if not Assigned(Sender) then
    Exit;
  if not Assigned(AInsertAct) then
    Exit;
  if TCustomdxDBTreeListControl(Sender).Count = 0 then
  begin
    if Sender is TdxDBTreeList then
      if ([etoCanInsert, etoCanNavigation] <= TdxDBTreeList(Sender).OptionsDB)
        then
        AInsertAct.Execute;
    if Sender is TdxDBGrid then
      if ([edgoCanInsert, edgoCanNavigation] <= TdxDBGrid(Sender).OptionsDB)
        then
        AInsertAct.Execute;
  end;
end;

procedure SendMsgBroadcast(Msg: Cardinal; wParam, lParam: integer);
var
  i: integer;
begin
  for i := 0 to Screen.FormCount - 1 do
    SendMessage(Screen.Forms[i].Handle, msg, wParam, lParam);
end;
{ ham nay chi goi 1 lan khi moi khoi tao menu, chua khoi tao quyen }

function PopupProcess(AForm: TForm; APopup: boolean; Sender: TObject; var Key:
  Word; Shift: TShiftState): boolean;
var
  ret: integer;
begin
  Result := false;
  if APopup then
  begin
    ret := OnPopUpKeyDown(Sender, Key, Shift);
    if ret = 2 then
      Result := true;
    if Assigned(AForm) then
    begin
      if ret = 1 then
        AForm.ModalResult := mrOK;
      if ret = -1 then
        AForm.ModalResult := mrCancel;
      Result := true;
    end;
  end;
end;

function PopupProcess(AForm: TForm; APopup: boolean; AGrid:
  TObject): boolean;
var
  ret: integer;
begin
  Result := false;
  if APopup then
  begin
    ret := OnClickExecute(AGrid);
    if ret = 2 then
      Result := true
    else if ret = 1 then
      if Assigned(AForm) then
      begin
        AForm.ModalResult := mrOK;
        Result := true;
      end;
  end;
end;

function OnPopUpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState): integer;
begin
  Result := 0;
  if ((Key in [VK_UP, VK_DOWN]) and (ssAlt in Shift)) or
    ((Key = VK_F4) and not (ssAlt in Shift)) or (Key = VK_ESCAPE) then
  begin
    result := -1;
    if (GetParentForm(Sender as TCustomdxDBTreeListControl) is TdxPopupEditForm)
      then
    begin
      (GetParentForm(Sender as TCustomdxDBTreeListControl) as
        TdxPopupEditForm).ClosePopup(False);
      result := 2;
    end;
  end;
  if Key = VK_RETURN then
    if not ((Sender as TCustomdxDBTreeListControl).DataSource.DataSet.State in
      [dsEdit, dsInsert]) then
    begin
      result := 1;
      if (GetParentForm(Sender as TCustomdxDBTreeListControl) is
        TdxPopupEditForm) then
      begin
        (GetParentForm(Sender as TCustomdxDBTreeListControl) as
          TdxPopupEditForm).ClosePopup(True);
        Key := 0;
        result := 2;
      end;
    end;
end;

function OnClickExecute(Sender: TObject): integer;
begin
  Result := 0;
  with (Sender as TCustomdxDBTreeListControl).DataSource.DataSet do
  begin
    if (not (State in [dsEdit, dsInsert])) and ((Sender as
      TCustomdxDBTreeListControl).FocusedNode <> nil) then
    begin
      Result := 1;
      if (GetParentForm((Sender as TCustomdxDBTreeListControl)) is
        TdxPopupEditForm) then
      begin
        TdxPopupEditForm(GetParentForm((Sender as
          TCustomdxDBTreeListControl))).ClosePopup(true);
        Result := 2;
      end;
    end;
  end;
end;

procedure CopyARow(ADataset: TDataset; AAppend: boolean);
var
  varCopyData: Variant;
  i: Integer;
begin
  if not Assigned(ADataset) then
    Exit;
  with TIBODataset(ADataSet) do
  begin
    varCopyData := VarArrayCreate([0, FieldCount - 1], varVariant);
    for i := 0 to FieldCount - 1 do
      varCopyData[i] := FieldByName(Fields[i].FieldName).Value;
    if AAppend then
      Append
    else
      Insert;
    for i := 0 to FieldCount - 1 do
      if Fields[i].IsNull then
        FieldByName(Fields[i].FieldName).Value := VarCopyData[i];
  end;
end;

procedure DecodeTag(ATag: integer; var AModuleID, APermission: smallint);
begin
  AModuleID := ATag shr 16;
  APermission := ATag and $FFFF;
end;

function EncodeTag(AModuleID, APermission: smallint): integer;
begin
  Result := AModuleID;
  Result := Result shl 16;
  Result := Result + APermission;
end;

function ExtractPermission(ATag: integer): smallint;
begin
  Result := ATag and $FFFF;
end;

procedure DrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: WideString; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
var
  ppi: PPropInfo;
begin
  if AColumn.InheritsFrom(TdxDBTreeListColumn) then
  begin
    ppi := getPropInfo(TComponent(TdxDBTreeListColumn(AColumn).Field).classInfo,
      'DisplayFormat');
    if Assigned(ppi) then
      TdxDBTreeListColumn(AColumn).SummaryFooterFormat :=
        GetStrProp(TdxDBTreeListColumn(AColumn).Field, ppi);
  end;
end;

end.

