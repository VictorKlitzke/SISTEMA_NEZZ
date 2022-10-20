object NEZZViewsUsuarioAdicionar: TNEZZViewsUsuarioAdicionar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'NEZZViewsUsuarioAdicionar'
  ClientHeight = 238
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnContent: TPanel
    Left = 0
    Top = 41
    Width = 361
    Height = 197
    Align = alClient
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 33
    ExplicitWidth = 354
    ExplicitHeight = 209
    object lbCadastrar: TLabel
      Left = 0
      Top = 0
      Width = 361
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'CADASTRAR US'#218'ARIOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 149
    end
    object edNome: TcxTextEdit
      Left = 6
      Top = 32
      TabOrder = 0
      TextHint = 'Nome'
      Width = 163
    end
    object edLogin: TcxTextEdit
      Left = 182
      Top = 32
      TabOrder = 1
      TextHint = 'Login'
      Width = 163
    end
    object edSenha: TcxTextEdit
      Left = 6
      Top = 75
      TabOrder = 2
      TextHint = 'Senha'
      Width = 163
    end
    object edCidade: TcxTextEdit
      Left = 184
      Top = 75
      TabOrder = 3
      TextHint = 'Cidade'
      Width = 161
    end
    object edEndereco: TcxTextEdit
      Left = 6
      Top = 120
      TabOrder = 4
      TextHint = 'Endere'#231'o'
      Width = 163
    end
    object edBairro: TcxTextEdit
      Left = 184
      Top = 120
      TabOrder = 5
      TextHint = 'Bairro'
      Width = 161
    end
    object pnButtons: TPanel
      Left = 0
      Top = 156
      Width = 361
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      TabOrder = 6
      ExplicitTop = 168
      ExplicitWidth = 354
      object btnLimpar: TcxButton
        Left = 268
        Top = 0
        Width = 93
        Height = 41
        Align = alRight
        Caption = 'Limpar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000473424954080808087C0864880000000970485973000000B1000000
          B101C62D498D0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000271494441545885ED97BB6B545110C67F9335
          46DD1583AEE06B8360C4455062ADE08A850816A22B28A8B1D05E2460FE040B21
          58D845488A8085858520F1811104C54611AC344AC26AD6C2175189463316F78B
          B97BDDCDDD4720CD0E1CE67C3B73CE7CE7CCDE73E6E0EED4DA8001C0A3AD9EB9
          5A684C3E0063C09F7A276894C07177DF0C14168B40C3D224D024D024B0E8044C
          476B79A35916E82D63DA036C01868122900792C06019DF47EEDE5F3148CC999F
          A3CC995F631B982FC6928ACC4A6518B854A5EFAC74017D714ED51228BAFB482D
          D1CDAC2ABF6A09E4CD2C570B0160D94210484927D5165CE23EC30EE93E7737E6
          727A44F899F06A6095FA2F643B2AFCA9110219E937D29BA40B21FCC3DD3F97B1
          754A8F2E0481D1082E98591BB03614F09F2D42E0752304665310DE81DF04A558
          B9DD08E3AD11F27511C80033C05B334B00EB81F7EE3E5305814E825A71AC2E02
          66D6026C04DEB9FB2F600790606E4B7749FF87CD6CB9C68EBBFB745D04809D40
          2BF04AF8A0F49D08BE6B664B81FDC024F004C802464CFEE3089C92BE150978DB
          CC56007B818FC05382CB2905DCD38AF3F27D1847A0D2259400260872B8016807
          A68182EC87082E9A21E1CBC2E7B4A87182FF4E47EC232714F43C7045FD039AF0
          BEF031E17EE1ABC227855F0A670852111EBB0E78006CAF48402B9C00BE11E46F
          48939C95BD0D3801EC164E031780B4F036A047FD418D3D2D7C51F85ADC0E6495
          CB95C077E027D05EE39B31A5454C02C9D0EFDD40ABFABDC008D0554220E47C46
          8C6FD6F168ED26A60861EE619B73F7D292CC824BFC39C127F805F84A6DB246BB
          B00F9802AE0337DCBD2714232D9FA2BB4F45D91DA6F112EC71A49C9BB724FB0B
          C8584B54274A97840000000049454E44AE426082}
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        ExplicitLeft = 261
      end
      object btnSalvar: TcxButton
        Left = 175
        Top = 0
        Width = 93
        Height = 41
        Align = alRight
        Caption = 'Salvar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000473424954080808087C0864880000000970485973000000EC000000
          EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000001E7494441545885EDD7BB6B544114C7F1CFC6
          D510044145C446417C21082660255AA5D142305DFE00255889DAD8051B1B2B3B
          0BB1B4D44A8404E3A31015F1D1F90041414588168AC92A492C66AE5ED9C9CECD
          AEBB58E407C3BCCECCF99EB93373EF25680877318B852EA5090C4868088D2E3A
          6E09518B911F881097F1B5D43F82EDF8842B29FAA8516CC65B5C4DB4BDC3FED8
          3E892398290617CB7E3131F1B5D8F7A48573988A76538BB40D08D137AD441FFA
          E380CF19279D6846887A32D6877113ABFBBAE834077110D77B095086B817EBC3
          F57F34F119ACC5978A10B7848D2F073017F3FE96563C4EB41563E6127DBF9503
          781DF35D42944F33F68576625F2CBFCC191747633CD1B709D3DABF78BE615B62
          DEF1C226B7093FE0105EE4A248E80D0EFBB38A4955D9840FB11B7BB0A1A2F369
          3C9779FE5501601ECF2ADA2E4939808DD8217F0A16D34FBCC2FBA502ACC2799C
          14AEEB4EB4804B388DEF5501CEE154878E0BD53016414E5401585372FE483832
          3FDA745EC759E1DE1F1302FB9803D88295B17C0137DA745E683E02D4843BE12F
          80D4F35D512AB71B7959E5399A02EEF5DBB049CB00CB00CB00FF05402396D7F5
          D0EFFA9837EA78205C95C78517465923C2F75D27DA5A2A8FE2288EC5FA7D18D4
          BB9FD3726A606F4136883BBAFB7B5EA459DC2E9CFF02A621D4B3801321E60000
          000049454E44AE426082}
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 1
        ExplicitLeft = 168
      end
    end
  end
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clNone
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 354
    object lbusuarios: TLabel
      Left = 0
      Top = 0
      Width = 66
      Height = 41
      Align = alLeft
      Alignment = taCenter
      Caption = 'Us'#250'arios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 21
    end
    object pnClose: TPanel
      Left = 303
      Top = 0
      Width = 58
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 296
      object btnClose: TcxButton
        Left = 0
        Top = 0
        Width = 58
        Height = 41
        Align = alClient
        BiDiMode = bdRightToLeftReadingOnly
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C0864880000000970485973000000B1000000
          B101C62D498D0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000015A494441544889ED93316EC23014867F879E
          213BBBD38A4CA819DC13200531652BC760304A068ED15E00819413E021B035A2
          C9DE4EDC22B8834B8A9390A6A65BFB6DF6B3BEFF29EF05F8E71BC8F9418EC72E
          2CEB198053AD754082905714C594AC562FA74B4B7BD2EB3D01B83590AB66A5BC
          FB7494E801523A06629D8AC3AA94AB6713AC8B871AB67D80EF2717EBBE9FC0B6
          0F9DD36A78DE1B82C003E7A256E35C20083C0C87EFE601EBB58734DDC07118E6
          F3AF90D94CDDE5B9401CDFB729F4359D4C64E32BCE452904004A19B24C208A58
          A374B92CBDDD861A450C69BA01A50C94AAA00BF22ADDB7464A937FA36300E702
          AEAB3ACF73014A59E3E08D02CE071A860C61C81A076F14E0FB09068307649992
          9F582CD41DA50CA3D1B64D71D31A90247D14C516715C1F681429F96ED76F5374
          5BD31FD2B6A6C75FF06B0E3D8090EC6A7DC5A10714C51484EC01987C2A0942F6
          381E1FAF68EF2FF201F9DB7D65461D83000000000049454E44AE426082}
        ParentBiDiMode = False
        PopupAlignment = paCenter
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnCloseClick
        ExplicitTop = -6
      end
    end
  end
  object dsUsuarios: TDataSource
    Left = 488
    Top = 209
  end
end
