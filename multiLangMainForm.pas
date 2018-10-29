unit multiLangMainForm;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMultiLangMainForm = class(TForm)
    cbLanguage: TComboBox;
    memoMessages: TMemo;
    btnOK: TButton;
    procedure FormShow(Sender: TObject);
    procedure cbLanguageChange(Sender: TObject);
  private
    { Private declarations }
    procedure LoadMessages;
  public
    { Public declarations }
  end;

var
  frmMultiLangMainForm: TMultiLangMainForm;



implementation

uses
  mORMoti18n,
  ResMessages;

{$R *.dfm}

procedure TMultiLangMainForm.cbLanguageChange(Sender: TObject);
var
  lang: TLanguages;
begin
  lang := LanguageAbrToIndex(cbLanguage.Text);
  SetCurrentLanguage(lang);
  Language.FormTranslateOne(frmMultiLangMainForm);
  LoadMessages;
end;

procedure TMultiLangMainForm.FormShow(Sender: TObject);
begin
{$IFDEF EXTRACTALLRESOURCES}
  ExtractAllResources(
    // first, all enumerations to be translated
    [], // TypeInfo(TFileEvent),TypeInfo(TFileAction),TypeInfo(TPreviewAction)],
    // then some class instances (including the TSQLModel will handle all TSQLRecord)
    [], // Client.Model],
    // some custom classes or captions
    [], []);
  Close;
{$ELSE}
  // i18nLanguageToRegistry(lngFrench);
  SetCurrentLanguage(lngPolish);
  Language.FormTranslateOne(self);
  LoadMessages;
{$ENDIF}

end;

procedure TMultiLangMainForm.LoadMessages;
begin
  memoMessages.Lines.Clear;
  memoMessages.Lines.Add(msg1);
  memoMessages.Lines.Add(msg2);
  memoMessages.Lines.Add(msg3);
end;

end.
