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
    pnContent: TPanel;
    ComboCliente: TComboBox;
    pnFooter: TPanel;
    BtnFinalizar: TcxButton;
    pnHeader: TPanel;
    lbCliente: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
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
