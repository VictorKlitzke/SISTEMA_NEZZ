object NEZZViewsVendaAdicionarCliente: TNEZZViewsVendaAdicionarCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'NEZZViewsVendaAdicionarCliente'
  ClientHeight = 132
  ClientWidth = 349
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
    Top = 41
    Width = 349
    Height = 91
    Align = alClient
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    object ComboCliente: TComboBox
      Left = 8
      Top = 24
      Width = 329
      Height = 21
      TabOrder = 0
      TextHint = 'Pesquisar Cliente'
    end
    object pnFooter: TPanel
      Left = 0
      Top = 50
      Width = 349
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object BtnFinalizar: TcxButton
        Left = 274
        Top = 0
        Width = 75
        Height = 41
        Align = alRight
        Caption = 'Finalizar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000076000000
          76014E7B26080000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000017A49444154388DE5924D28830118C77F7BDF
          31337BDFA689988F58C2613E5236C95273A1949252CAC9D95939CB495C85AB12
          8E92033970A04C08D396AF988D7D2643FB70B02DCD2EAEFC0F4FBF9E7A9E9EE7
          F93FF0CFA4545A32530AA021C91E7D8F65598E8B212091ADFEE5F1D9128F4627
          9E4E9D8BE99E8031C99266A8C3DAD7D523662BAECC9500D8585A99B22FAC693D
          C78E590011A8024C805B37D839525F69146E760E88BE7F90AFD771B76727E20B
          F1AA52E0F67A286B3369D445BAB6F0F5BDE6C5E3DB160117A007625A5BF3B070
          762F281402DE6307117F88882F88DF79CB5B204C241046575D4E614D855AAE2A
          6D09BA6E4B84E484FB4038356E2211E76EEF28C95F41256B912B4A7FAC966AF0
          007C00D4F5DBC851ABE9181FA5BABB1DC9508CC16CA2D8548B4AD200E0DCDC0D
          EC4ECECDB8ED1763CAAC07B3B6A6D9606E4CB34A2AE07C75F3E9707E75CA7B72
          390D5F36A694A7EF35AFCB3165906F360AA2182F6F6F72BDFA02F9575BFB0399
          36FE4E591EE90FE81308B58255C4B0784B0000000049454E44AE426082}
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = BtnFinalizarClick
      end
    end
  end
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 1
    object lbCliente: TLabel
      Left = 0
      Top = 0
      Width = 245
      Height = 41
      Align = alLeft
      Caption = 'ESCOLHER CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 37
    end
    object pnClose: TPanel
      Left = 295
      Top = 0
      Width = 54
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btnClose: TcxButton
        Left = 0
        Top = 0
        Width = 54
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
      end
    end
  end
end
