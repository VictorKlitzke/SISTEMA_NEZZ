object NEZZViewsClientes: TNEZZViewsClientes
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'CLIENTES'
  ClientHeight = 510
  ClientWidth = 953
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
    Top = 18
    Width = 953
    Height = 444
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 59
    ExplicitWidth = 969
    ExplicitHeight = 442
    object dsDadosCliente: TcxGrid
      Left = 0
      Top = 0
      Width = 953
      Height = 444
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 969
      ExplicitHeight = 442
      object dsDadosClienteDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = dsDadosClienteDBTableView1CellDblClick
        DataController.DataSource = dsClientes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object dsDadosClienteLevel1: TcxGridLevel
        GridView = dsDadosClienteDBTableView1
      end
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 462
    Width = 953
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 501
    ExplicitWidth = 969
    object btnDeletar: TcxButton
      Left = 749
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
      OnClick = btnDeletarClick
      ExplicitLeft = 765
    end
    object btnAdicionar: TcxButton
      Left = 851
      Top = 0
      Width = 102
      Height = 48
      Align = alRight
      Caption = 'Adicionar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200804000000D973B2
        7F0000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        02624B47440000AA8D23320000000970485973000000600000006000F06B42CF
        0000000774494D4507E6090B15012607236268000002914944415448C78DD25F
        68D57518C7F1D7EF9CE3E696461E3570385B5B277066F82761BA30480A11C2BA
        99D824FF80DD9437C662E885034DA540E8CF85944A3776214A32BD50C874734B
        C459176DE23F38EC0C274BDB70A542A9F3E29C6D6E67E79CDFE7EACBF37C3FEF
        E7FB3CDF8789F4B6C35206F4EB77D745DBBC20B4A638A243DD8825EA755FE9B1
        329CBD48ABBD2259F16AD7948701ECF67D8E4C202A5AC81E772B4FB71BED2C04
        A877204FF62557B383B1719DFE6EA9E502D7B5F87BDCDD6E7193FC3F3638765C
        71837E16C16A1775D8E92DA52836DF97DED72F9EFF0554EBB167E4BC4AA384A9
        8ADC90542910E49FC17EF79DCE915BEA8127668D0F8F6D61B61D8672E2CFF9D5
        ECFC80C0505653C38A7A5C780FEADC93CC91DBE0A10B8A0B218A5DB268C2CC09
        1F1432A755EFF404B35EAEB37003C33A6EDF3844B5A49AB076263BE68C651948
        5C839477C3DBD3FAC6803EBFE9F29787D9BF3FAA893F2DAE48931F95FB574A9F
        E9FA3C0957F9150DDAA43C50978994E890D4EB80F7948049CF1A461729E10B9D
        9A4D57E673B576DB8A0AED5A2DD263C826775C36A857CAB76377B2C47E37347A
        1554B8698D197E7142CA879ED7AE49A966A7D40830C36752DE19052CB44BD133
        C03462B3017FA8D2AE093FF95A8058A6F63CDDAAD3D76B4DC99A45852B5A94F9
        C41DDBB1CC9F9912359A3377D6A64F81A4B282C3FDCE16C3E54E8ECCEF966931
        09FD7AB14A8BFB3901F31C1458A74495393E46ABAB3A252266E9010D12795EF0
        584454954A654A55AA3413114331318F42EC4797252E6B42AD691A41CC6BAE45
        4298E1B04FB3B6F6236D0659E128386B415EC4213F88A2D412F0866E5504E63A
        A30B8B5DF74F1EC0646F3A6F9773FEF3B2F536AAD74680722F866C648E4D167A
        CE6DC7ED73179E023C76A026EED165340000002574455874646174653A637265
        61746500323032322D30392D31315432313A30313A33382B30303A3030BB1B57
        EF0000002574455874646174653A6D6F6469667900323032322D30392D313154
        32313A30313A33382B30303A3030CA46EF530000002874455874646174653A74
        696D657374616D7000323032322D30392D31315432313A30313A33382B30303A
        30309D53CE8C0000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      OnClick = btnAdicionarClick
      ExplicitLeft = 867
    end
  end
  object pnPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 18
    Align = alTop
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 41
    ExplicitWidth = 969
    object checkoutNome: TCheckBox
      Left = 781
      Top = 0
      Width = 60
      Height = 18
      Align = alRight
      Caption = 'Nome'
      TabOrder = 0
      ExplicitLeft = 797
    end
    object checkoutCodigo: TCheckBox
      Left = 841
      Top = 0
      Width = 60
      Height = 18
      Align = alRight
      Caption = 'Codigo'
      TabOrder = 2
      ExplicitLeft = 857
    end
    object checkoutCNPJ: TCheckBox
      Left = 901
      Top = 0
      Width = 52
      Height = 18
      Align = alRight
      Caption = 'CNPJ'
      TabOrder = 3
      ExplicitLeft = 917
    end
    object edPesquisar: TEdit
      Left = 0
      Top = 0
      Width = 529
      Height = 18
      Align = alLeft
      BevelInner = bvNone
      BorderStyle = bsNone
      TabOrder = 1
      TextHint = 'Pesquisar'
      OnChange = edPesquisarChange
    end
  end
  object dsClientes: TDataSource
    Left = 376
    Top = 264
  end
end
