object NEZZGenericMensagem: TNEZZGenericMensagem
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 138
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnContent: TPanel
    Left = 0
    Top = 0
    Width = 399
    Height = 138
    Align = alClient
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 390
    ExplicitHeight = 178
    object img_icone: TImage
      Left = 1
      Top = 42
      Width = 91
      Height = 54
      Align = alLeft
      Stretch = True
      ExplicitTop = 36
    end
    object lbTexto: TLabel
      Left = 98
      Top = 62
      Width = 300
      Height = 21
      Caption = 'Texto'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
    end
    object pnTitulo: TPanel
      Left = 1
      Top = 1
      Width = 397
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 388
      object lbTitulo: TLabel
        Left = 0
        Top = 0
        Width = 72
        Height = 41
        Align = alLeft
        Caption = 'TITULO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 30
      end
    end
    object pnBotao: TPanel
      Left = 1
      Top = 96
      Width = 397
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 136
      ExplicitWidth = 388
      object BtnOK: TcxButton
        Left = 322
        Top = 0
        Width = 75
        Height = 41
        Align = alRight
        Caption = 'OK'
        Colors.DefaultText = clWhite
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 313
      end
    end
  end
end
