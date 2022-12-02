object NEZZViewsAdicionarProdutoVendas: TNEZZViewsAdicionarProdutoVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 274
  ClientWidth = 906
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
  object pnFooter: TPanel
    Left = 0
    Top = 233
    Width = 906
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clNone
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 326
    ExplicitWidth = 537
    object pnExtraColor: TPanel
      Left = 453
      Top = 0
      Width = 453
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 448
    end
  end
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = -6
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 257
      Height = 41
      Align = alLeft
      Caption = 'Venda de Produtos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object pnClose: TPanel
      Left = 853
      Top = 0
      Width = 53
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 848
      object btnClose: TcxButton
        Left = 0
        Top = 0
        Width = 53
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
        ExplicitTop = -1
      end
    end
    object pnExtraColors: TPanel
      Left = 453
      Top = 0
      Width = 400
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 448
    end
  end
  object pnMenu: TPanel
    Left = 0
    Top = 41
    Width = 457
    Height = 192
    Align = alLeft
    BevelOuter = bvNone
    Color = clNone
    ParentBackground = False
    TabOrder = 2
    ExplicitHeight = 313
    object BtnAddProduto: TcxButton
      Left = 24
      Top = 16
      Width = 49
      Height = 41
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000181006000000B0E7E1
        BB0000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        06624B4744000000000000F943BB7F0000000970485973000000600000006000
        F06B42CF0000000774494D4507E60C020D0A1C850650230000010E4944415458
        C3ED98316A42411445CFFBFC1558848FD8980DB882D4C12F2856122C046DAC53
        6719D940C03ED888AE207536904A9CD1C2D2D29B4292EE13F80E198439CD3497
        77B98FF718784620DCB304DD6EF605B058500098FD0A3C80644F00E3F1DDC80C
        D6EB6B7DF35001EC11A0D95407A0D1A8D2E9F5A20BE59B852A148B1420362940
        6C5280D8E4EE4382B2CCDE005AADBA85D406E8F5FE143E00F4FBFBB90479ED7F
        E83C01D86ECD6F24708E0E4051FC6BFBAE2107381C6E7E845280D858B0251E02
        94E5659706834AE127C07269EF00AB555DBF9F250ED609FF22C174EABD0452E5
        BB9160360BE57BF3239402C42605884D0A109B6057099D009CCBE600C763D559
        E57C0FB0DB85F2FD0634CE6081EA13C5D10000002574455874646174653A6372
        6561746500323032322D31322D30325431333A31303A32382B30303A3030243E
        ACC40000002574455874646174653A6D6F6469667900323032322D31322D3032
        5431333A31303A32382B30303A3030556314780000002874455874646174653A
        74696D657374616D7000323032322D31322D30325431333A31303A32382B3030
        3A3030027635A70000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      OnClick = BtnAddProdutoClick
    end
    object pnProduto: TPanel
      Left = -2
      Top = 59
      Width = 449
      Height = 41
      BevelOuter = bvNone
      Caption = 'pnProduto'
      TabOrder = 1
    end
  end
  object pnPreco: TPanel
    Left = 453
    Top = 41
    Width = 453
    Height = 192
    Align = alRight
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 448
    ExplicitHeight = 285
    object Label2: TLabel
      Left = 89
      Top = 15
      Width = 51
      Height = 21
      Caption = 'VALOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 89
      Top = 86
      Width = 85
      Height = 21
      Caption = 'DESCONTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 91
      Top = 156
      Width = 46
      Height = 21
      Caption = 'TOTAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edValorProduto: TcxTextEdit
      Left = 232
      Top = 86
      TabOrder = 0
      Width = 161
    end
    object cxTextEdit2: TcxTextEdit
      Left = 232
      Top = 16
      TabOrder = 1
      Width = 161
    end
    object edTotal: TcxTextEdit
      Left = 232
      Top = 156
      TabOrder = 2
      Width = 161
    end
  end
end
