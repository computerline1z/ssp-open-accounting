unit ButtonFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  DBActns, ActnList, Buttons, ExtCtrls, dxLayoutControl, cxControls,Forms,
  StdCtrls, dxLayoutLookAndFeels, ElXPThemedControl, ElBtnCtl,
  ElPopBtn;

type
  TBtnsFrame = class(TFrame)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    ABCXYZ: TdxLayoutWebLookAndFeel;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    TntBitBtn1: TELPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    TntBitBtn2: TELPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    TntBitBtn3: TELPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    TntBitBtn4: TELPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    TntBitBtn5: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    TntBitBtn6: TELPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
