object NEZZViewsVendas: TNEZZViewsVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 700
  ClientWidth = 1145
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
  object pnContent: TPanel
    Left = 0
    Top = 48
    Width = 1145
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 41
    ExplicitHeight = 594
    object dsVendasGrid: TcxGrid
      Left = 0
      Top = 0
      Width = 1145
      Height = 604
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 680
      ExplicitTop = 328
      ExplicitWidth = 250
      ExplicitHeight = 200
      object dsVendasGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object dsVendasGridLevel1: TcxGridLevel
        GridView = dsVendasGridDBTableView1
      end
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 652
    Width = 1145
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 658
    object btnDeletar: TcxButton
      Left = 1043
      Top = 0
      Width = 102
      Height = 48
      Align = alRight
      Caption = 'Deletar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000473424954080808087C0864880000000970485973000000F8000000
        F801CFC1E6650000001974455874536F667477617265007777772E696E6B7363
        6170652E6F72679BEE3C1A0000016E494441545885ED97BF4AC3501487BF535B
        5B544497D2C1417D882E5DDCBBB988A3EEAE5D7C021FC14D70E9E8EA1F5C7C01
        413BE9505D8552B58348F438E408E1725B93180395FCE072C397C339BF8473C9
        09AA4AD2052C0387401F78052E8156AA5C298ACF017780021FC073E4BA9D8781
        7D2B7801AC015560CFD8631E06CEAC58CBE137C6D793E42B915C75DB7B0EEF39
        F763A90C2022E5EFEB1812DBAB22528BF019DB671D3E4E81AA06004D6044F8FA
        F25C23A0590606C02DB064CEEA84C7EC0178F338AF0115C2E317550598078663
        9E78D562EECDC01018F89AECC80236D29CEB09CDDBB7BCB5DF3661A62A0CC436
        20226D116938AC21226D4FEC96882C646A0038063A0EEB188F165F04BAC06ED6
        064A9EF8712C76EEE9E981C24061A030501800025B3FB14FC2EFBECBBD8A3B07
        026C03D70E3B004EA340555F446493707ACECE80AA9E7BD813E0E32771F34E55
        0FFC4F03937AA02B22BEB13CAD56BCD4333EEF00EFFCCDCFC8955BEF0BA5D50D
        4D1D7D0D270000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      ExplicitLeft = 1070
    end
    object btnImprimir: TcxButton
      Left = 941
      Top = 0
      Width = 102
      Height = 48
      Align = alRight
      Caption = 'Imprimir'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000473424954080808087C0864880000000970485973000000EC000000
        EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
        6170652E6F72679BEE3C1A00000338494441545885ED97BF6F1B6518C73FF7DE
        7BF6B9AEEDFE402E49042520918A81D2AA5D80A0A28040AA470654C1C248974E
        ED504107061833F02754028905B9995211C94820C450452048D4AA2988046891
        EADA3EDB67FBFDD1813AB193E03B3B2D59FA5DEEDEBBE7C7E7BDF7799FBB835D
        9613C3E62DE0F088F17F03E67704E0BA6EB0674F2A914CFADA71E2F0FEAB562B
        74EBF5465B6BBD77909D8C114B7E78F6AC373DFDAA97CBE56203944ADF72E9E3
        4B26CA4EC40DA8B5C65A1B1B20AE6203586B514AED1E0040A3D17CE800FF5503
        6F02339B6D94EAD06EB7492412C3C4FFECC1F937C0D55800AEF42EF899DCA96C
        7E42DDB9F98BDB7B2F0802B2D92C52C6A85FC771C7A68E9EABDE599361AD7252
        ABCE1680ED97C011CEE48953EEE9F3B349D7ED4F64ADA55AADD2E97422F3BBAE
        E4F4F9D9E4E4C9D75D9CEDB7FCE6691C038E19ADC7EFAEAEB05C9AC368CDE2E2
        22B56A75ABB394788904426C8D7DFDFA0D8CD62C97E6B8BBBA82D17A1CF800B8
        062CAECFB57B2284B8688CF9C4F3530A908E231CC71118A3104210DD84FAEF5B
        6B31462384C45A83B5C602AA1336E5835C9FF67AB98E708357DE3FE71F79AD10
        9168675A2ECDF1DDE5D9D01ABD17D0DD1A485BA3FDFDE3938F3439C0FE8949AC
        D13E908621FBC0A3D0638081DDE4E7F9AFF8E3A71FA8FCF53BD6E8A1023B4290
        1B3BCCF891E3BC54786F3480CC134FB26FEC69FE5CBAC6CC1B331C3C7010CFF3
        2293D76A358AC5224F1D7D996C7E62A0ED4080678E4F937FEE057E5DF89A42A1
        C0D4D4F36432994880D5D5358AC5222FBEFD6E24C05035A0F570CB10475D00DB
        771800604CE4474E84D67318D858829A90F2F672E94A5EB8D271C4C68309834A
        9F7BABD522954AC54A555EBB45BB59DF486D0C4BA52B5648F9B7512AE805C028
        75E6E68F0B5FDCF87E3E3F2868B319E2FB7E8C77035CFDFCA32DD78494FF18A5
        CE74C7BD45B860943A04ECA3FFCD7208585A9F8535341A0DD2E9742400700258
        E9195BA3D4BD5E83ED76C1BD4D637FB3411886789E17E7CBA8029407198CDC09
        8320A0DD6E8FEABE73006B2DB55A8D300C7707A0AB7ABD4EA55219F969C4F9D7
        CA03B773B95C2B4E1B06ACD6DA2997CB49E059E0D64E0100DE010EC4B4EDAA0A
        7C39A4CFFFAFFBBB282F81E34B1A490000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      ExplicitLeft = 935
      ExplicitTop = 6
    end
  end
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 1145
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    object lbVendas: TLabel
      Left = 0
      Top = 0
      Width = 382
      Height = 48
      Align = alLeft
      Caption = 'GERENCIAMENTO DE VENDAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 37
    end
    object pnClose: TPanel
      Left = 1080
      Top = 0
      Width = 65
      Height = 48
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 65
      object btnClose: TcxButton
        Left = 0
        Top = 0
        Width = 65
        Height = 48
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
        ExplicitWidth = 52
        ExplicitHeight = 41
      end
    end
  end
  object dsVendas: TDataSource
    Left = 800
    Top = 592
  end
end
