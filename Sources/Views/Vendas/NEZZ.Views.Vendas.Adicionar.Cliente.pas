unit NEZZ.Views.Vendas.Adicionar.Cliente;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  Vcl.ExtCtrls;

type
  TNEZZViewsVendaAdicionarCliente = class(TForm)
    pnContent: TPanel;
    ComboCliente: TComboBox;
    pnFooter: TPanel;
    BtnFinalizar: TcxButton;
    pnHeader: TPanel;
    lbCliente: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsVendaAdicionarCliente: TNEZZViewsVendaAdicionarCliente;

implementation

{$R *.dfm}

end.
