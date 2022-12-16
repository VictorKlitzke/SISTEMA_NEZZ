unit NEZZ.Views.Vendas.Adicionar.Produto;

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
  Vcl.DBCtrls, NEZZ.Factory.Vendas.Produtos, NEZZ.Models.Vendas.Produtos;

type
  TNEZZViewsAdicionarProdutoVendas = class(TForm)
    pnHeader: TPanel;
    pnContent: TPanel;
    pnFooter: TPanel;
    pnClose: TPanel;
    pnExtraColor: TPanel;
    pnColorExtra: TPanel;
    BtnFinalizar: TcxButton;
    dsVendasDBTableView1: TcxGridDBTableView;
    dsVendasLevel1: TcxGridLevel;
    GridVendas: TcxGrid;
    dsAdicionarProdutos: TDataSource;
    pnPesquisar: TPanel;
    btnClose: TcxButton;
    BtnRemover: TcxButton;
    Label1: TLabel;
    ComboBoxProduto: TDBComboBox;
    BtnNovo: TcxButton;
    pnSubValores: TPanel;
    lbTotal: TLabel;
    lbValor: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure BtnFinalizarClick(Sender: TObject);
    procedure ComboBoxProdutoChange(Sender: TObject);
  private
    FNEZZVenda: iNEZZServicesCadastrar;

    FNEZZModelsProdutoVendas: iNEZZModelsVendasProdutos;
    FNEZZFactoryProdutoVendas: iNEZZFactoryVendasProdutos;

  public
    procedure CarregarComboVenda;

  end;

var
  NEZZViewsAdicionarProdutoVendas: TNEZZViewsAdicionarProdutoVendas;

implementation

{$R *.dfm}

procedure TNEZZViewsAdicionarProdutoVendas.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsAdicionarProdutoVendas.BtnFinalizarClick(Sender: TObject);
begin
  NEZZViewsVendaAdicionarCliente.ShowModal;
end;

procedure TNEZZViewsAdicionarProdutoVendas.CarregarComboVenda;
begin
  FNEZZFactoryProdutoVendas := TNEZZFactoryVendasProdutos
      .New
      .DataSource(dsAdicionarProdutos)
      .ListarVendaProdutos;

  with dsVendasDBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;

procedure TNEZZViewsAdicionarProdutoVendas.ComboBoxProdutoChange(
  Sender: TObject);
begin
  CarregarComboVenda;
end;

end.
