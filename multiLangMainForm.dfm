object MultiLangMainForm: TMultiLangMainForm
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cbLanguage: TComboBox
    Left = 88
    Top = 57
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'cbLanguage'
    OnChange = cbLanguageChange
    Items.Strings = (
      'PL'
      'EN')
  end
  object memoMessages: TMemo
    Left = 88
    Top = 99
    Width = 393
    Height = 158
    Lines.Strings = (
      'memoMessages')
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 544
    Top = 256
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 8
    TabOrder = 2
  end
end
