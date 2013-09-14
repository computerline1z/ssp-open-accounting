unit CM_PopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxTL, dxDBCtrl, dxCntner, dxDBTL, dxLayoutControl,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, cxControls,GlobalUnit;

type
  TCM_PopupFrm = class(TForm)
    dxlcObjGroupGroup_Root: TdxLayoutGroup;
    dxlcObjGroup: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxlcObjGroupItem1: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxlcObjGroupItem3: TdxLayoutItem;
    dxtlObjGroup: TdxDBTreeList;
    dxlcObjGroupItem4: TdxLayoutItem;
    dxlcObjGroupGroup1: TdxLayoutGroup;
    dxtlObjGroupOBJGRP_ID: TdxDBTreeListColumn;
    dxtlObjGroupOBJGRP_NAME: TdxDBTreeListColumn;
    ElPopupButton2: TElPopupButton;
    dxlcObjGroupItem2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure dxtlObjGroupDblClick(Sender: TObject);
    procedure dxtlObjGroupEnter(Sender: TObject);
    procedure dxtlObjGroupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CM_PopupFrm: TCM_PopupFrm;

implementation

{$R *.dfm}
uses GlobalInterface, MainDataMdl, ObjGrpForm, CM_Functions, DBFunctions;
procedure TCM_PopupFrm.FormCreate(Sender: TObject);
begin
  ApplyUserInterface(TControl(Sender));

end;

procedure TCM_PopupFrm.ElPopupButton2Click(Sender: TObject);
var CurObjType:Integer;
begin
  CurObjType:=MainDM.CurObjTypeID;
  with TObjGrpFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;

  if MainDM.qryPObjGrp.Active then
    MainDM.qryPObjGrp.Refresh
  else
    MainDM.qryPObjGrp.Open;
    
  MainDM.CurObjTypeID:=CurObjType;
end;

procedure TCM_PopupFrm.dxtlObjGroupDblClick(Sender: TObject);
begin
    PopupProcess(Self,true,Sender);
end;

procedure TCM_PopupFrm.dxtlObjGroupEnter(Sender: TObject);
begin
  if MainDM.qryPObjGrpOTYPE_ID.AsInteger<>MainDM.CurObjTypeID then
  begin
    MainDM.qryPObjGrp.OnFilterRecord:=MainDM.qryPObjGrpFilterRecord;
    MainDM.qryPObjGrp.Filtered:=True;
  end;
end;

procedure TCM_PopupFrm.dxtlObjGroupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if Key = VK_RETURN then
    (GetParentForm(dxtlObjGroup) as TdxPopupEditForm).ClosePopup(True)
  else  if (Key = VK_ESCAPE) then
    (GetParentForm(dxtlObjGroup) as TdxPopupEditForm).ClosePopup(False)
  else
    ProcessKeyDownInTreeList(dxtlObjGroup, Key, Shift);
end;

end.
