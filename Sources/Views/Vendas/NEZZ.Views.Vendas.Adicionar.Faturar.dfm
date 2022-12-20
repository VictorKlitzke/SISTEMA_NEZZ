object NEZZViewsVendasAdicionarFaturar: TNEZZViewsVendasAdicionarFaturar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 477
  ClientWidth = 1235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 1235
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1422
    object pnClose: TPanel
      Left = 1180
      Top = 0
      Width = 55
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 1367
      object btnClose: TcxButton
        Left = 0
        Top = 0
        Width = 55
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
      end
    end
    object pnExtraColor: TPanel
      Left = 0
      Top = 0
      Width = 646
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      TabOrder = 1
      object lbVenda: TLabel
        Left = 0
        Top = 0
        Width = 107
        Height = 41
        Align = alLeft
        Caption = 'VENDAS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitHeight = 37
      end
    end
  end
  object pnContent: TPanel
    Left = 0
    Top = 62
    Width = 645
    Height = 374
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -6
    ExplicitTop = 56
    ExplicitWidth = 668
    object Label2: TLabel
      Left = 8
      Top = 52
      Width = 84
      Height = 15
      Caption = 'C'#243'digo Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 0
      Top = 0
      Width = 645
      Height = 25
      Align = alTop
      Caption = 'ADICIONAR PRODUTOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 207
    end
    object Label4: TLabel
      Left = 167
      Top = 52
      Width = 62
      Height = 15
      Caption = 'Quantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 326
      Top = 52
      Width = 72
      Height = 15
      Caption = 'Valor Unitario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCliente: TLabel
      Left = 44
      Top = 219
      Width = 602
      Height = 25
      Caption = 'VICTOR GABRIEL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbNomeProduto: TLabel
      Left = 8
      Top = 115
      Width = 84
      Height = 15
      Caption = 'Nome Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnSubValores: TPanel
      Left = 0
      Top = 333
      Width = 645
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 504
      ExplicitWidth = 726
      object lbTotal: TLabel
        Left = 0
        Top = 0
        Width = 63
        Height = 41
        Align = alLeft
        Alignment = taCenter
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 30
      end
      object lbValor: TLabel
        Left = 79
        Top = 6
        Width = 43
        Height = 21
        Alignment = taCenter
        Caption = '150,14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object edCodProduto: TcxTextEdit
      Left = 16
      Top = 73
      TabOrder = 1
      Width = 135
    end
    object edQuantidade: TcxTextEdit
      Left = 175
      Top = 73
      TabOrder = 2
      Width = 135
    end
    object edValorUni: TcxTextEdit
      Left = 334
      Top = 73
      TabOrder = 3
      Width = 135
    end
    object BtnPesquisarProduto: TcxButton
      Left = 488
      Top = 70
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = 'Pesquisar Produtos'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F80000000473424954080808087C0864880000000970485973000000B1000000
        B101C62D498D0000001974455874536F667477617265007777772E696E6B7363
        6170652E6F72679BEE3C1A000000B1494441544889EDD2316A42411485E14F91
        18E11526109BC4D6658895854B48E516CC22D228982E9097A5D8DAD96867E30E
        140B89D859CC3CB01FBBCCDF0CC3C07F867B0F994CA616CF021F78C225D1D9C4
        01739CA0831FBC268A6BD1056F28ABFB0CED4479217C72826F3C44E7B481471C
        13034631608521FA58A0554F14576C3110C6F48E5DF550C759FA88D6D8E0134B
        8C85C2FC111651A29B18724B0FBF78B9ADE904CFEE53D33DBEC49A6632FF9D2B
        2ACE19E9D01DD0CE0000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object BtnAddCliente: TcxButton
      Left = 16
      Top = 179
      Width = 129
      Height = 34
      Caption = 'Adicionar Cliente'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F80000000473424954080808087C0864880000000970485973000000B1000000
        B101C62D498D0000001974455874536F667477617265007777772E696E6B7363
        6170652E6F72679BEE3C1A00000088494441544889ED933D0A80300C469F2288
        5EC341B0DEC7337A1B051D1C3C8AD6C1803A88A93F83D007816F48783434A027
        057AA9D4614E8D01AC94D10E850E82E024BF26B8851778C17322D6ABCC15B26C
        970B20BEE89F8101D6D3B71F55174AF80A1BE0B6A25A72058C17FD13B2222D25
        DBD34BEDD0FFBFA91778C1017B925F23015AA091AC6201B98F2A3B88142FFD00
        00000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
      DragCursor = crHandPoint
      OnClick = BtnAddClienteClick
    end
    object edNomeProduto: TcxTextEdit
      Left = 16
      Top = 136
      TabOrder = 6
      Width = 617
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 436
    Width = 1235
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 607
    ExplicitWidth = 1422
    object pnColorExtra: TPanel
      Left = 0
      Top = 0
      Width = 639
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      TabOrder = 0
      object BtnFinalizar: TcxButton
        Left = 526
        Top = 0
        Width = 113
        Height = 41
        Align = alRight
        Caption = 'Finalizar'
        Colors.DefaultText = clBlack
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000970485973000000EC000000EC01792871BD0000001974455874536F
          667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000014249
          4441545885EDD63D2885511CC7F14F970119149BD255C4C064B699241964B318
          2C5226D9955DD928931466C962352856062649792BEE2AC3739EEE25F7E2BE1C
          CBF3AD6739E774BEBFD3F99F7F0F19198D2187BEFF0CB08E0226FE433E1EE4CF
          188C2DEFC24D08B0145B0EFB417E8CA6D8F2B920BF434F6C792FEE438099D8F2
          669C04F94E6C39AC04F9253A4AC6D350DF7D27E9A25C8DF29110E01DF378A971
          BF3FD1860BC989D6628A53D26E778696D8F231BCE10943B1E59DB8969C7EB15E
          9B4E62E0976B7783FCD0E722AE54F5655F01E4C3E083A49B556236ACBD45F797
          B9AA03502CA802B6D1FE8D3CAFD8EDA67F085A1553923E5E903CAFE192B91C8E
          C2DC5623E429FD380DA2472C84F1E53076E573B76B08ADD850BC9203C9CFC52B
          461B2D2F6546F1CE0B58FD32FF97A22B5B84CD1502ECE11C9B6502646464D485
          0FF3876F8459F8B7480000000049454E44AE426082}
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnFinalizarClick
        ExplicitLeft = 661
      end
      object BtnNovo: TcxButton
        Left = 0
        Top = 0
        Width = 97
        Height = 41
        Align = alLeft
        Caption = 'Novo(F1)'
        Colors.DefaultText = clBlack
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C0864880000000970485973000000B1000000
          B101C62D498D0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000088494441544889ED933D0A80300C469F2288
          5EC341B0DEC7337A1B051D1C3C8AD6C1803A88A93F83D007816F48783434A027
          057AA9D4614E8D01AC94D10E850E82E024BF26B8851778C17322D6ABCC15B26C
          970B20BEE89F8101D6D3B71F55174AF80A1BE0B6A25A72058C17FD13B2222D25
          DBD34BEDD0FFBFA91778C1017B925F23015AA091AC6201B98F2A3B88142FFD00
          00000049454E44AE426082}
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BtnRemover: TcxButton
      Left = 1135
      Top = 0
      Width = 100
      Height = 41
      Align = alRight
      Caption = 'Remover'
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
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 1322
    end
  end
  object pnPesquisar: TPanel
    Left = 0
    Top = 41
    Width = 1235
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 1422
  end
  object pnDadosVendas: TPanel
    Left = 645
    Top = 62
    Width = 590
    Height = 374
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object GridVendas: TcxGrid
      Left = 0
      Top = -170
      Width = 590
      Height = 544
      Align = alBottom
      TabOrder = 0
      ExplicitTop = -40
      ExplicitWidth = 696
      object GridVendasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsAdicionarProdutos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
      end
      object GridVendasLevel1: TcxGridLevel
        GridView = GridVendasDBTableView1
      end
    end
  end
  object dsAdicionarProdutos: TDataSource
    Left = 680
    Top = 72
  end
end
