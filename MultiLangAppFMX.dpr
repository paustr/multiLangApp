program MultiLangAppFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  multiLangMainFormFMX in 'multiLangMainFormFMX.pas' {frmMultiLangMain},
  ResMessages in 'ResMessages.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMultiLangMainFormFMX, frmMultiLangMain);
  Application.Run;
end.
