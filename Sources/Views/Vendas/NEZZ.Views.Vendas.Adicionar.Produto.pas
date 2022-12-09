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
  NEZZ.Views.Produtos,NEZZViewBase;

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
    BoxPesquisa: TSearchBox;
    btnClose: TcxButton;
    cxButton1: TcxButton;
    Label1: TLabel;
    procedure btnCloseClick(Sender: TObject);
  private
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
