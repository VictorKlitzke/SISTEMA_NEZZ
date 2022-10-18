object NEZZViewsClienteEditar: TNEZZViewsClienteEditar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 269
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = -1
    ParentBackground = False
    TabOrder = 0
    object lbCRUD: TLabel
      Left = 0
      Top = 0
      Width = 139
      Height = 41
      Align = alLeft
      Caption = 'EDITAR CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 19
    end
    object pnClose: TPanel
      Left = 436
      Top = 0
      Width = 47
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btnClose: TcxButton
        Left = 0
        Top = 0
        Width = 47
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
  end
  object pnFooter: TPanel
    Left = 0
    Top = 228
    Width = 483
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = -1
    ParentBackground = False
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 383
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
      OnClick = cxButton1Click
    end
  end
  object pnContent: TPanel
    Left = 0
    Top = 41
    Width = 483
    Height = 187
    Align = alClient
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    object edNome: TcxTextEdit
      Left = 6
      Top = 12
      TabOrder = 0
      TextHint = 'Cliente'
      Width = 226
    end
    object edRazao: TcxTextEdit
      Left = 248
      Top = 12
      TabOrder = 1
      TextHint = 'Raz'#227'o Social'
      Width = 226
    end
    object edCPF: TcxTextEdit
      Left = 6
      Top = 58
      Style.BorderStyle = ebs3D
      TabOrder = 2
      TextHint = 'CPF'
      Width = 226
    end
    object edContato: TcxTextEdit
      Left = 248
      Top = 58
      TabOrder = 3
      TextHint = 'Telefone'
      Width = 226
    end
    object edCidade: TcxTextEdit
      Left = 6
      Top = 104
      TabOrder = 4
      TextHint = 'Cidade'
      Width = 226
    end
    object edBairro: TcxTextEdit
      Left = 248
      Top = 104
      TabOrder = 5
      TextHint = 'Bairro'
      Width = 226
    end
    object edEndereco: TcxTextEdit
      Left = 248
      Top = 149
      TabOrder = 6
      TextHint = 'Endere'#231'o'
      Width = 226
    end
    object edCEP: TcxTextEdit
      Left = 6
      Top = 149
      TabOrder = 7
      TextHint = 'CEP'
      Width = 67
    end
    object edEmail: TcxTextEdit
      Left = 79
      Top = 149
      TabOrder = 8
      TextHint = 'Email'
      Width = 153
    end
  end
  object dsEditarCliente: TDataSource
    Left = 224
    Top = 120
  end
end
