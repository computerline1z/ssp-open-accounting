unit MessageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ElCLabel, ElLabel;

type
  TMessageFrm = class(TForm)
    lblMessageBox: TElLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MessageFrm: TMessageFrm;

implementation

{$R *.dfm}

end.
