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
  Vcl.DBCtrls, cxContainer, cxTextEdit;

type
  TNEZZViewsAdicionarProdutoVendas = class(TForm)
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
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edCodProduto: TcxTextEdit;
    edQuantidade: TcxTextEdit;
    edValorUni: TcxTextEdit;
    BtnPesquisarProduto: TcxButton;
    GridVendas: TcxGrid;
    GridVendasDBTableView1: TcxGridDBTableView;
    GridVendasLevel1: TcxGridLevel;
    BtnAddCliente: TcxButton;
    Label6: TLabel;
    procedure btnCloseClick(Sender: TObject);
  private
    FNEZZVenda: iNEZZServicesCadastrar;

  public

  end;

var
  NEZZViewsAdicionarProdutoVendas: TNEZZViewsAdicionarProdutoVendas;

implementation

{$R *.dfm}

procedure TNEZZViewsAdicionarProdutoVendas.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
