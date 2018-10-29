program MultiLangApp;

uses
  Vcl.Forms,
  multiLangMainForm in 'multiLangMainForm.pas' {Form3},
  SynCommons in '..\mORMot\SynCommons.pas',
  mORMoti18n in '..\mORMot\SQLite3\mORMoti18n.pas',
  ResMessages in 'ResMessages.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMultiLangMainForm, frmMultiLangMainForm);
  Application.Run;
end.
