object NEZZViewsAdicionarProdutoVendas: TNEZZViewsAdicionarProdutoVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'NEZZViewsAdicionarProdutoVendas'
  ClientHeight = 391
  ClientWidth = 959
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
    Width = 959
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    object pnClose: TPanel
      Left = 904
      Top = 0
      Width = 55
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
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
      Width = 457
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Color = -1
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 304
        Height = 41
        Align = alLeft
        Caption = 'ADICIONAR PRODUTOS'
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
    Top = 65
    Width = 959
    Height = 285
    Align = alClient
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 1
    object GridVendas: TcxGrid
      Left = 0
      Top = 0
      Width = 959
      Height = 285
      Align = alClient
      TabOrder = 0
      object dsVendasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
      end
      object dsVendasLevel1: TcxGridLevel
        GridView = dsVendasDBTableView1
      end
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 350
    Width = 959
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    object pnColorExtra: TPanel
      Left = 0
      Top = 0
      Width = 457
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnColorExtra'
      Color = -1
      ParentBackground = False
      TabOrder = 0
      object BtnFinalizar: TcxButton
        Left = 0
        Top = 0
        Width = 113
        Height = 41
        Align = alLeft
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
        ExplicitTop = 6
      end
    end
    object cxButton1: TcxButton
      Left = 859
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
    end
  end
  object pnPesquisar: TPanel
    Left = 0
    Top = 41
    Width = 959
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object BoxPesquisa: TSearchBox
      Left = 0
      Top = 0
      Width = 959
      Height = 24
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 21
    end
  end
  object dsAdicionarProdutos: TDataSource
    Left = 464
    Top = 184
  end
end
