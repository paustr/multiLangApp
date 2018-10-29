unit multiLangMainFormFMX;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls;

type
  TMultiLangMainFormFMX = class(TForm)
    memoMessages: TMemo;
    cbLanguage: TComboBox;
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
  frmMultiLangMain: TMultiLangMainFormFMX;

implementation

uses
  mORMoti18n,
  resMessages;

{$R *.fmx}

procedure TMultiLangMainFormFMX.cbLanguageChange(Sender: TObject);
var
  lang: TLanguages;
begin
  lang := LanguageAbrToIndex(cbLanguage.Selected.Text);
  SetCurrentLanguage(lang);
  Language.FormTranslateOne(frmMultiLangMain);
  LoadMessages;
end;

procedure TMultiLangMainFormFMX.FormShow(Sender: TObject);
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

procedure TMultiLangMainFormFMX.LoadMessages;
begin
  memoMessages.Lines.Clear;
  memoMessages.Lines.Add(msg1);
  memoMessages.Lines.Add(msg2);
  memoMessages.Lines.Add(msg3);
end;

end.
