object NEZZViewsFornecedorEditar: TNEZZViewsFornecedorEditar
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'EDITAR CLIENTE'
  ClientHeight = 219
  ClientWidth = 419
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
    Top = 0
    Width = 419
    Height = 178
    Align = alClient
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    object lbNome: TLabel
      Left = 8
      Top = 3
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object lbRazao: TLabel
      Left = 215
      Top = 3
      Width = 60
      Height = 13
      Caption = 'Raz'#227'o Social'
    end
    object lbCidade: TLabel
      Left = 7
      Top = 77
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lbCEP: TLabel
      Left = 8
      Top = 113
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object lbCPF: TLabel
      Left = 8
      Top = 39
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label1: TLabel
      Left = 216
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Contato'
    end
    object Label2: TLabel
      Left = 217
      Top = 77
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label3: TLabel
      Left = 214
      Top = 113
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object edNome: TcxDBTextEdit
      Left = 6
      Top = 16
      DataBinding.DataField = 'NOME'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 0
      Width = 195
    end
    object edRazao: TcxDBTextEdit
      Left = 214
      Top = 16
      DataBinding.DataField = 'RAZAO_SOCIAL'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 1
      Width = 195
    end
    object edCNPJ: TcxDBTextEdit
      Left = 6
      Top = 54
      DataBinding.DataField = 'CNPJ'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 2
      Width = 195
    end
    object edContato: TcxDBTextEdit
      Left = 214
      Top = 54
      DataBinding.DataField = 'TELEFONE'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 3
      Width = 195
    end
    object edCidade: TcxDBTextEdit
      Left = 5
      Top = 91
      DataBinding.DataField = 'CIDADE'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 4
      Width = 195
    end
    object edBairro: TcxDBTextEdit
      Left = 216
      Top = 91
      DataBinding.DataField = 'BAIRRO'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 5
      Width = 195
    end
    object edEndereco: TcxDBTextEdit
      Left = 214
      Top = 128
      DataBinding.DataField = 'ENDERECO'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 6
      Width = 195
    end
    object edCEP: TcxDBTextEdit
      Left = 6
      Top = 128
      DataBinding.DataField = 'CEP'
      DataBinding.DataSource = dsEditarFornecedor
      TabOrder = 7
      Width = 194
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 178
    Width = 419
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = -1
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TcxButton
      Left = 319
      Top = 0
      Width = 100
      Height = 41
      Align = alRight
      Caption = 'Salvar'
      Colors.DefaultText = clBtnFace
      Colors.HotText = clBtnFace
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000180000001810040000001AEE29
        300000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        02624B47440000AA8D23320000000970485973000000600000006000F06B42CF
        0000000774494D4507E60A11002C31C63311F0000002034944415448C7ED963D
        4B6B4110869F3D842485FE89833636A28D45041B0D160141144C25F67E948A85
        D888110B4320BF2185885808068B584505C12082209AD256C1224789FB5AC47B
        F3E14930C75BDE07B698B333F3CE995D860540361E973D3F972A1505A252915D
        5CC487906C3C8E393981DB5B94CD62AA5548266BDBB91CBE8C8E422C063B3B00
        68781893C9C83A8E7132992657D98B0BE9E646361CAE7F2B14640B05DA206D6E
        4A52DD3F1492F6F7256B6597971B7D1DCCE0201C1F1BE7FD9D8018A75A45C924
        1C1C60D2E9461107A251787B0B9ABC4984B939C8E530E9B4B4B20210F2F77E79
        81B131D9D353FF1EB92EE6F9F95B98F9F8909D9FC784C3B0B72759EBF8D7B3BE
        0E6767EDCBBDBF878585CEEDCAE76177D7F70F8CB9BB83E9E9DFB44BBABC84C9
        492768929FF25FA07B01D9FE7ED9C7C7AEC7917D7890EDEB6BCDF7FD16999919
        705D585BEBAA54934AC1EC2C6C6F771620120130E66B90FD102995FA13DBB145
        FEC1AE2B5B0F968D4424D70D7406FE944A98C679BFB404A5D23F14E8E981DEDE
        BFA669B17F2F109C1F0ABCBED6563BBB3D21F03CBFD36F6668089E9EEA76360B
        87879D63A251F03C07954A904834DE92568C29978DF1BCBAED79C694CBEDFC6B
        B91209B8BE0EC1C606E4F398AB2BE9E8088D8C60405A5DEDBAE18AC5A4AD2D98
        9A828101148F7F294E4C48C562F0674BCB1346C5A2ECF838C027501692F33C33
        174B0000002574455874646174653A63726561746500323032322D31302D3137
        5430303A34343A34392B30303A303095143FD30000002574455874646174653A
        6D6F6469667900323032322D31302D31375430303A34343A34392B30303A3030
        E449876F0000002874455874646174653A74696D657374616D7000323032322D
        31302D31375430303A34343A34392B30303A3030B35CA6B00000000049454E44
        AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnSalvarClick
    end
  end
  object dsEditarFornecedor: TDataSource
    Left = 184
    Top = 160
  end
end
