object NEZZViewsUsuarioEditar: TNEZZViewsUsuarioEditar
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'EDITAR USU'#193'RIO'
  ClientHeight = 158
  ClientWidth = 393
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
    Width = 393
    Height = 117
    Align = alClient
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    object lbNome: TLabel
      Left = 11
      Top = 3
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lbRazao: TLabel
      Left = 215
      Top = 3
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object Label1: TLabel
      Left = 216
      Top = 51
      Width = 39
      Height = 13
      Caption = 'Contato'
    end
    object lbSenha: TLabel
      Left = 8
      Top = 51
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object edNome: TcxDBTextEdit
      Left = 8
      Top = 22
      DataBinding.DataField = 'NOME'
      DataBinding.DataSource = dsUsuariosEditar
      TabOrder = 0
      Width = 170
    end
    object edSenha: TcxDBTextEdit
      Left = 8
      Top = 70
      DataBinding.DataField = 'SENHA'
      DataBinding.DataSource = dsUsuariosEditar
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      TabOrder = 1
      Width = 170
    end
    object edLogin: TcxDBTextEdit
      Left = 215
      Top = 22
      DataBinding.DataField = 'LOGIN'
      DataBinding.DataSource = dsUsuariosEditar
      TabOrder = 2
      Width = 170
    end
    object edTelefone: TcxDBTextEdit
      Left = 215
      Top = 70
      DataBinding.DataField = 'TELEFONE'
      DataBinding.DataSource = dsUsuariosEditar
      TabOrder = 3
      Width = 170
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 117
    Width = 393
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = -1
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TcxButton
      Left = 293
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
  object dsUsuariosEditar: TDataSource
    Left = 128
    Top = 144
  end
end
