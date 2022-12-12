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
    procedure BtnFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsVendaAdicionarCliente: TNEZZViewsVendaAdicionarCliente;

implementation

uses
  NEZZ.Views.Vendas.Finalizar;

{$R *.dfm}

procedure TNEZZViewsVendaAdicionarCliente.BtnFinalizarClick(Sender: TObject);
begin
  NEZZViewsVendasFinalizar.ShowModal;
end;

end.
