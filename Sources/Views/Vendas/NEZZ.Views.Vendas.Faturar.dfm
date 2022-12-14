object NEZZViewsVendasFaturar: TNEZZViewsVendasFaturar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 542
  ClientWidth = 1338
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
    Width = 1338
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1422
    object pnClose: TPanel
      Left = 1283
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
      Width = 642
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Color = -1
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 107
        Height = 41
        Align = alLeft
        Caption = 'VENDAS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
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
    Width = 642
    Height = 439
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 726
    ExplicitHeight = 545
    object LBCodProd: TLabel
      Left = 8
      Top = 57
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
    object LBAddProd: TLabel
      Left = 0
      Top = 0
      Width = 642
      Height = 25
      Align = alTop
      Caption = '   ADICIONAR PRODUTOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 222
    end
    object LBQtd: TLabel
      Left = 167
      Top = 57
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
    object LBValorUni: TLabel
      Left = 326
      Top = 57
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
    object LBCliente: TLabel
      Left = 40
      Top = 253
      Width = 264
      Height = 30
      Caption = 'VICTOR GABRIEL MIRANDA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object LBNomeProd: TLabel
      Left = 8
      Top = 123
      Width = 79
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
      Top = 398
      Width = 642
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 504
      ExplicitWidth = 726
      object lbTotal: TLabel
        Left = 0
        Top = 0
        Width = 87
        Height = 41
        Align = alLeft
        Alignment = taCenter
        Caption = '    TOTAL'
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
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '    150,14'
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
      Top = 78
      TabOrder = 1
      Width = 130
    end
    object edQuantidade: TcxTextEdit
      Left = 175
      Top = 78
      TabOrder = 2
      Width = 130
    end
    object edValorUni: TcxTextEdit
      Left = 334
      Top = 78
      TabOrder = 3
      Width = 130
    end
    object BtnPesquisarProduto: TcxButton
      Left = 485
      Top = 75
      Width = 150
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object BtnAddCliente: TcxButton
      Left = 16
      Top = 213
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
      OnClick = BtnAddClienteClick
    end
    object edNomeProduto: TcxTextEdit
      Left = 17
      Top = 144
      TabOrder = 6
      Width = 608
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 501
    Width = 1338
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
      Width = 642
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnColorExtra'
      Color = -1
      ParentBackground = False
      TabOrder = 0
      object BtnFinalizar: TcxButton
        Left = 529
        Top = 0
        Width = 113
        Height = 41
        Align = alRight
        Caption = 'Finalizar'
        Colors.DefaultText = clWhite
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000473424954080808087C0864880000000970485973000000EC000000
          EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000229494441545885DD97B16B13511CC73FBF4B
          CC35699404B51163C5C152680A76D13A8B83431C5D1A1114B4D4499C1C0A2E82
          0E7654DAEA680B828220827F80882E1AD41624168412B4045B6DD224172FF71C
          CE720D36CDA59C39E877BAF7BBDF7B9F0FF7EEE09EF0374AE5740C1945640418
          04BAF1366BC027949A4157D3227D068000A8F2E72481E00BE098C7D066C95237
          D312E9CF8B52399D9AF6B683704722649DD43064D40738C01046E0B28648C607
          B81DB132A28C852210F549A1A4F90807886A3EC201D88102CB0FE0DB7530575C
          B5073D85FF7A0A853BF675E51D1C7A08A1A35B4EF1EE0954DEC3D2B833FEBD08
          CB932DA77923607E87FC18A8DA8695C310BBD80101AB6AC3EB850D4581C46DE8
          4AFD6F01054B37A0FAA1B1BCF72AEC39EB6A057702E557F0E50414EE029653FF
          711F569F37F6464FC3BE6BAE960510652CA82D3B8C1C2C9E837AD11EEF3E0307
          266CA9FC58A390DE0F879F8016712DD0FA335C9972E000C597F61B5EFBDA080F
          C62139D5161CDC6C41FC12047A1A6BD539B0D69CB104E1E03DD8D5DB16DC9D80
          3E00479E41D740F39E9E9B101E6E1BEE4E00209880DEC7D07DEADF7BF1F3101B
          D916DCBD00D87B9B9C84D805A716390EFBC79BCF7191D65FC166F9390BE5D790
          B80581980F021E6607FE0F6C43A0E4237F5503E6FDE3AB790DA51EF9C7D766D6
          8F666F80A10EE3B384AAC39A489F41DD4C03D98EC2EB665A245593F58A527321
          8CF015C4CA800CE2FD81A504F211C52C7A655A245503F8036E65A4455465B77D
          0000000049454E44AE426082}
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 661
      end
      object BtnNovo: TcxButton
        Left = 0
        Top = 0
        Width = 97
        Height = 41
        Align = alLeft
        Caption = 'Novo(F1)'
        Colors.DefaultText = clWhite
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
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BtnRemover: TcxButton
      Left = 1238
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
    Width = 1338
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 1422
  end
  object pnDadosItens: TPanel
    Left = 642
    Top = 62
    Width = 696
    Height = 439
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = 726
    ExplicitHeight = 545
    object GridVendas: TcxGrid
      Left = 0
      Top = -105
      Width = 696
      Height = 544
      Align = alBottom
      TabOrder = 0
      ExplicitTop = -40
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
    Left = 760
    Top = 64
  end
end
