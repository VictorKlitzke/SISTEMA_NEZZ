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
  Vcl.ExtCtrls,
  NEZZ.Views.Vendas.Finalizar,
  NEZZ.Factory.Cliente,
  NEZZ.Models.Cliente, cxControls,
  cxContainer,
  cxEdit, Data.DB,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TNEZZViewsVendaAdicionarCliente = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    BtnFinalizar: TcxButton;
    pnHeader: TPanel;
    lbCliente: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    ComboCliente: TcxLookupComboBox;
    dsBuscarClientes: TDataSource;
    procedure BtnFinalizarClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FNEZZFactoryCliente: iNEZZFactoryCliente;
    FNEZZModelsCliente: iNEZZModelsCliente;

  public
    function Cliente(UID: integer): Integer;
  end;

var
  NEZZViewsVendaAdicionarCliente: TNEZZViewsVendaAdicionarCliente;

implementation

{$R *.dfm}

procedure TNEZZViewsVendaAdicionarCliente.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsVendaAdicionarCliente.BtnFinalizarClick(Sender: TObject);
begin
  NEZZViewsVendasFinalizar.ShowModal;
end;

function TNEZZViewsVendaAdicionarCliente.Cliente(UID: integer): Integer;
begin
  FNEZZModelsCliente.Filtrar('ID', UID);
end;

procedure TNEZZViewsVendaAdicionarCliente.FormCreate(Sender: TObject);
begin
  FNEZZModelsCliente := TNEZZModelsCliente.New.DataSource(dsBuscarClientes);
end;

end.
