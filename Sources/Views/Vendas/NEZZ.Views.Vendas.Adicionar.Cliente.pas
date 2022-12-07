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
  TNEZZViewsVendasAdicionarCliente = class(TForm)
    pnHeader: TPanel;
    pnContent: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
    ComboCliente: TComboBox;
    pnFooter: TPanel;
    BtnFinalizar: TcxButton;
    lbCliente: TLabel;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsVendasAdicionarCliente: TNEZZViewsVendasAdicionarCliente;

implementation

{$R *.dfm}

procedure TNEZZViewsVendasAdicionarCliente.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
