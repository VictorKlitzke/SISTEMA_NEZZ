unit NEZZ.Views.Clientes;

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
  Vcl.WinXCtrls,
  cxButtons,
  Vcl.ExtCtrls,
  cxControls,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  Data.DB,
  cxDBData,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxCheckBox,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  NEZZ.Views.Cliente.Adicionar,
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Cliente,
  NEZZ.Models.Cliente,
  NEZZViewBase,
  ConexaoDados;

type
  TNEZZViewsClientes = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    btnEditar: TcxButton;
    btnDeletar: TcxButton;
    btnAdicionar: TcxButton;
    pnHeader: TPanel;
    lblClientes: TLabel;
    btnClose: TcxButton;
    dsClientes: TDataSource;
    GridDadosGrid1DBTableView1: TcxGridDBTableView;
    dsDadosGrid1Level1: TcxGridLevel;
    dsDadosCliente: TcxGrid;
    checkoutNome: TCheckBox;
    checkoutCodigo: TCheckBox;
    edPesquisar: TEdit;
    GridDadosGrid1DBTableView1Column1: TcxGridDBColumn;
    dsDadosClienteLevel1: TcxGridLevel;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPesquisarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FNEZZCliente: iNEZZServicesCadastrar;
    FNEZZFactoryCliente: iNEZZFactoryCliente;

  public
    procedure CarregarDados;
  end;

var
  NEZZViewsClientes: TNEZZViewsClientes;

implementation

{$R *.dfm}

{ TNEZZViewsClientes }

procedure TNEZZViewsClientes.btnAdicionarClick(Sender: TObject);
begin
  try
    if Assigned(NEZZViewsClienteAdicionar) then
    if not Assigned(NEZZViewsClienteAdicionar) then
      Application.CreateForm(TNEZZViewsClienteAdicionar, NEZZViewsClienteAdicionar);

    NEZZViewsClienteAdicionar.ShowModal;

    CarregarDados;
  finally
    FreeAndNil(NEZZViewsClienteAdicionar);
  end;
end;

procedure TNEZZViewsClientes.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsClientes.CarregarDados;
begin
  FNEZZFactoryCliente := TNEZZFactoryCliente
    .New
    .DataSource(dsClientes)
    .ListarCliente;

  with GridDadosGrid1DBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;

procedure TNEZZViewsClientes.edPesquisarChange(Sender: TObject);
begin
  if edPesquisar.Text = '' then
  begin
    FNEZZFactoryCliente := TNEZZFactoryCliente
      .New
      .DataSource(dsClientes)
      .ListarCliente;
  end
  else
  begin
    FNEZZFactoryCliente := TNEZZFactoryCliente
      .New
      .DataSource(dsClientes)
      .FiltrarCliente(edPesquisar.Text);
  end;
end;

procedure TNEZZViewsClientes.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;
procedure TNEZZViewsClientes.FormShow(Sender: TObject);
begin
pnContent.Top :=  Trunc((ClientHeight/2) - (pnContent.Height/2));
pnContent.Left:= Trunc((ClientWidth/2) - (pnContent.Width/2));
end;

end.
