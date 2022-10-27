inherited NEZZViewsClientes1: TNEZZViewsClientes1
  Caption = 'NEZZViewsClientes1'
  ExplicitLeft = -135
  ExplicitTop = 2
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnHeader: TPanel
    inherited lblClientes: TLabel
      Width = 382
      Caption = 'GERENCIAMENTO DE VENDAS'
      ExplicitWidth = 382
    end
  end
  inherited pnPesquisa: TPanel
    inherited checkoutNome: TCheckBox
      Left = 950
      Width = 65
      ExplicitLeft = 955
      ExplicitWidth = 65
    end
    inherited checkoutCodigo: TCheckBox
      Left = 1015
      Width = 65
      ExplicitLeft = 1020
      ExplicitWidth = 65
    end
    inherited checkoutCNPJ: TCheckBox
      Left = 1080
      Width = 65
      Caption = 'Vendedor'
      ExplicitWidth = 65
    end
  end
end
