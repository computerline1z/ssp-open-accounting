unit DBFunctions;
interface
uses SysUtils, Windows, Classes, Forms, DB, dxDBCtrl, ExtCtrls, dxDBGrid,
  dxExEdtr, StdCtrls, Controls, IBODataset, Dialogs, IB_Session, IB_Components,
  DBActns, ActnList, variants, Math;

procedure SaveDataOnCloseForm(dataset: TIBODataSet; noClose: Boolean);
function BuildPersonName(FirstName, MiddleName, LastName: widestring):
  widestring;
overload;
function BuildPersonName(qrySource: TDataset; FirstFieldName, MiddleFieldName,
  LastFieldName: widestring): widestring; overload;
function ErrorInterBase(error: LongInt): string;
{ truong hop field cua nguon va dest giong nhau}
procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ASourceTextField: string; var Text: widestring); overload;
procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields: string); overload;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields, ASourceTextField: string; var Text: widestring);
overload;
procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields: string); overload;

procedure ImportFromFile(ADest: TDataset; ADestField, ADestContentTypeField:
  string);
procedure ExportToFile(ASource: TDataset; ASourceField, ASourceContentTypeField:
  string);
procedure ConnectDatabase(ADBName, AServer, AUsername,
  APassword, ARole: string; Aprotocol: TIB_Protocol; var AConn: TIB_Connection);

implementation

{-----------------------------------------------------------------------------
  Procedure: SaveOnCloseForm  //Nhac nho luu du lieu truoc khi dong form
  Author:    ndhinh
  Date:      25-Feb-2002
  Arguments: dataset: TIBDataSet; noClose: Boolean (true
  Result:    None
-----------------------------------------------------------------------------}

procedure SaveDataOnCloseForm(dataset: TIBODataSet; noClose: Boolean);
begin
  with dataset do
  begin
    if state in [dsEdit, dsInsert] then
    begin
      {      if MessageDlg('B¹n cã muèn l­u mÉu tin hiÖn hµnh tr­íc khi ®ãng danh môc ?', mtWarning, [mbYes, mbNo], 0) = mrYes then
              Post
            else
      }
      Cancel;
    end;
    if not noClose then
      Close;
    //    if IB_Transaction.Tag = 0 then
    //      IB_Transaction.CommitRetaining;
  end;
end;
{-----------------------------------------------------------------------------
  function: ErrorInterBase
  Author:    ndhinh
  Date:      13-Nov-2001
  Arguments: error : LongInt
  Result:    string
-----------------------------------------------------------------------------}

function ErrorInterBase(error: LongInt): string;
var
  stError: string;
begin
  case error of
    335544472: stError := 'Username hoÆc password sai!';
    335544375: stError := 'C¬ së d÷ liÖu ch­a s½n sµng!';
    335544344: stError := 'C¬ së d÷ liªu kh«ng t×m thÊy!';
    335544665: stError := 'M· sè nµy ®· tån t¹i, NhËp l¹i!';
    335544466: stError := 'L­u d÷ liÖu kh«ng thµnh c«ng!'
  else
    stError := 'Lçi ' + IntToStr(error);
  end;
  result := stError;
end;

function BuildPersonName(FirstName, MiddleName, LastName: widestring):
  widestring; overload;
begin
  if FirstName <> '' then
    Result := FirstName + ' ';
  if MiddleName <> '' then
    Result := Result + MiddleName + ' ';
  if LastName <> '' then
    Result := Result + LastName;
end;

function BuildPersonName(qrySource: TDataset; FirstFieldName, MiddleFieldName,
  LastFieldName: widestring): widestring; overload;
begin
  Result :=
    BuildPersonName(VarToWideStr(qrySource.FieldByName(FirstFieldName).Value),
    VarToWideStr(qrySource.FieldByName(MiddleFieldName).Value),
    VarToWideStr(qrySource.FieldByName(LastFieldName).Value));
end;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields, ASourceTextField: string; var Text: widestring);
begin
  if Accept then
  begin
    if ASource.IsEmpty then exit;
    OnPopupCloseUp(Accept, ASource, ADest, ASourceFields, ADestFields);
    Text := VarToWideStr(ASource.FieldByName(ASourceTextField).Value);
  end;
end;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields: string);
var
  srclist, destlist: TStringList;
  i, count: smallint;
  stream_s, stream_d: TStream;
begin
  if Accept then
  begin
    srclist := TStringList.Create;
    srclist.Delimiter := ';';
    srclist.DelimitedText := ASourceFields;

    destlist := TStringList.Create;
    destlist.Delimiter := ';';
    destlist.DelimitedText := ADestFields;
    count := Min(srclist.Count, destlist.Count) - 1;
    ADest.Edit;
    for i := 0 to count do
    begin
      if ASource.FieldByname(srclist.Strings[i]).DataType =
        ADest.FieldByName(destlist.Strings[i]).DataType then
      begin
        if ADest.FieldByName(destlist.Strings[i]).IsBlob then
        begin
          stream_s :=
            ASource.CreateBlobStream(ASource.FieldByName(srclist.Strings[i]),
            bmRead);
          stream_d :=
            ADest.CreateBlobStream(ADest.FieldByName(destlist.Strings[i]),
            bmReadWrite);
          stream_d.CopyFrom(stream_s, stream_s.Size);
        end
        else
          ADest.FieldByName(destlist.Strings[i]).Value :=
            ASource.FieldByname(srclist.Strings[i]).Value;
      end;
    end;
  end;
end;
{truong hop dest va source giong nhau}

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ASourceTextField: string; var Text: widestring);
var
  ADestFields: string;
begin
  ADestFields := ASourceFields;
  OnPopupCloseUp(Accept, ASource, ADest, ASourceFields, ADestFields,
    ASourceTextField, Text);
end;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields: string);
var
  ADestFields: string;
begin
  ADestFields := ASourceFields;
  OnPopupCloseUp(Accept, ASource, ADest, ASourceFields, ADestFields);
end;

procedure ImportFromFile(ADest: TDataset; ADestField, AdestContentTypeField:
  string);
var
  opendlg: TOpenDialog;
begin
  opendlg := TOpenDialog.Create(nil);
  try
    opendlg.Filter :=
      'Word Document *.doc|*.doc|Excel Files *.xsl|*.xsl|Text Files *.txt|*.txt|HTML File *.html|*.html';
    if opendlg.Execute then
      if ADest.Active then
      begin
        Adest.Edit;
        (Adest.FieldByName(ADestField) as
          TBlobField).LoadFromFile(opendlg.FileName);
        ADest.FieldByName(AdestContentTypeField).Value :=
          ExtractFileName(opendlg.FileName);
      end;
  finally
    opendlg.Free;
  end;
end;

procedure ExportToFile(ASource: TDataset; ASourceField, ASourceContentTypeField:
  string);
var
  savedlg: TSaveDialog;
  ext: string;
begin
  savedlg := TSaveDialog.Create(nil);
  try
    if ASource.Active then
    begin
      ext :=
        ExtractFileExt(VarToWideStr(ASource.FieldByName(ASourceContentTypeField).Value));
      savedlg.Filter := '*' + ext + '|*' + ext;
      savedlg.DefaultExt := ext;
      savedlg.FileName :=
        VarToWideStr(ASource.FieldByName(ASourceContentTypeField).Value);
      if savedlg.Execute then
        (ASource.FieldByName(ASourceField) as
          TBlobField).SaveToFile(savedlg.FileName);
    end;
  finally
    savedlg.Free;
  end;
end;

procedure ConnectDatabase(ADBName, AServer, AUsername,
  APassword, ARole: string; Aprotocol: TIB_Protocol; var AConn: TIB_Connection);
begin
  if Aconn.Connected then
    Aconn.Close;
  Aconn.DatabaseName := ADBName;
  Aconn.Server := AServer;
  if AServer <> '' then
    Aconn.Protocol := cpTCP_IP
  else
    Aconn.Protocol := cpLocal;
  Aconn.Username := AUsername;
  Aconn.Password := APassword;
  AConn.LoginSQLRole := ARole;
  try
    Aconn.Connect;
  except
    raise;
  end;
end;

end.

