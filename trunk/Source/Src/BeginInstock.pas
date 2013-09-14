unit BeginInstock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, ButtonFrame, dxDBTLCl, dxGrClms;

type
  TBeginInstockFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1Column3: TdxDBGridColumn;
    locFormGroup1: TdxLayoutGroup;
    BitBtn1: TBitBtn;
    locFormItem2: TdxLayoutItem;
    BitBtn2: TBitBtn;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TBitBtn;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TBitBtn;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    dxPopupEdit1: TdxPopupEdit;
    locFormItem9: TdxLayoutItem;
    dxPopupEdit2: TdxPopupEdit;
    locFormItem3: TdxLayoutItem;
    dxDBGrid1Column4: TdxDBGridSpinColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BeginInstockFrm: TBeginInstockFrm;

implementation

uses GlobalInterface;


{$R *.dfm}

procedure TBeginInstockFrm.FormCreate(Sender: TObject);
begin
  ApplyUserInterface(Sender as TControl);
end;

end.
