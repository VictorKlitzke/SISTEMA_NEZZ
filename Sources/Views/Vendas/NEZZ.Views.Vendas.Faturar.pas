unit NEZZ.Views.Vendas.Faturar;

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
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxButtons,
  Vcl.ExtCtrls,
  NEZZ.Views.Vendas.Adicionar.Cliente,
  NEZZ.Views.Produtos,
  NEZZViewBase,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  NEZZ.Views.Vendas.FormaPgt.Pix,
  NEZZ.Models.Produto,
  NEZZ.Factory.Produto,
  Vcl.DBCtrls,
  cxContainer,
  cxTextEdit;

type
  TNEZZViewsVendasFaturar = class(TForm)
    pnHeader: TPanel;
    pnContent: TPanel;
    pnFooter: TPanel;
    pnClose: TPanel;
    pnExtraColor: TPanel;
    pnColorExtra: TPanel;
    BtnFinalizar: TcxButton;
    dsAdicionarProdutos: TDataSource;
    pnPesquisar: TPanel;
    btnClose: TcxButton;
    BtnRemover: TcxButton;
    Label1: TLabel;
    BtnNovo: TcxButton;
    pnSubValores: TPanel;
    lbTotal: TLabel;
    lbValor: TLabel;
    pnDadosItens: TPanel;
    LBCodProd: TLabel;
    LBAddProd: TLabel;
    LBQtd: TLabel;
    LBValorUni: TLabel;
    edCodProduto: TcxTextEdit;
    edQuantidade: TcxTextEdit;
    edValorUni: TcxTextEdit;
    BtnPesquisarProduto: TcxButton;
    GridVendas: TcxGrid;
    GridVendasDBTableView1: TcxGridDBTableView;
    GridVendasLevel1: TcxGridLevel;
    BtnAddCliente: TcxButton;
    LBCliente: TLabel;
    edNomeProduto: TcxTextEdit;
    LBNomeProd: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure BtnAddClienteClick(Sender: TObject);
  private
    FNEZZVenda: iNEZZServicesCadastrar;

  public

  end;

var
  NEZZViewsVendasFaturar: TNEZZViewsVendasFaturar;

implementation

{$R *.dfm}

procedure TNEZZViewsVendasFaturar.BtnAddClienteClick(Sender: TObject);
begin
  if Assigned(NEZZViewsVendaAdicionarCliente) then
  if not Assigned(NEZZViewsVendaAdicionarCliente) then
    Application.CreateForm(TNEZZViewsVendaAdicionarCliente, NEZZViewsVendaAdicionarCliente);

  NEZZViewsVendaAdicionarCliente.ShowModal;
end;

procedure TNEZZViewsVendasFaturar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
