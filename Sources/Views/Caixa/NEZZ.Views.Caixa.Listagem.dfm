object NEZZViewsCaixaListagem: TNEZZViewsCaixaListagem
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Caixas'
  ClientHeight = 385
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnContent: TPanel
    Left = 0
    Top = 35
    Width = 493
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 483
    ExplicitHeight = 299
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 493
      Height = 309
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 483
      ExplicitHeight = 299
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsListagemCaixa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 344
    Width = 493
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 334
    ExplicitWidth = 483
    object BtnImprimir: TcxButton
      Left = 401
      Top = 0
      Width = 92
      Height = 41
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
      TabOrder = 0
      ExplicitLeft = 391
    end
  end
  object pnPeriodo: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 483
    object dateInicio: TcxDateEdit
      Left = 135
      Top = 6
      TabOrder = 0
      Width = 121
    end
    object dateFim: TcxDateEdit
      Left = 8
      Top = 6
      TabOrder = 1
      Width = 121
    end
  end
  object dsListagemCaixa: TDataSource
    Left = 200
    Top = 328
  end
end
