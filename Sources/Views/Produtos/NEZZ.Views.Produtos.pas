unit NEZZ.Views.Produtos;

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
  Vcl.ExtCtrls,
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
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxButtons,
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Autenticacao,
  NEZZ.Factory.Produto,
  NEZZ.Models.Produto, NEZZ.Views.Produtos.Adicionar;

type
  TNEZZViewsProdutos = class(TForm)
    pnFooter: TPanel;
    pnHeader: TPanel;
    pnContent: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
    GridProdutosDBTableView1: TcxGridDBTableView;
    GridProdutosLevel1: TcxGridLevel;
    GridProdutos: TcxGrid;
    dsProdutos: TDataSource;
    cxButton1: TcxButton;
    BtnDeletar: TcxButton;
    BtnAdicionar: TcxButton;
    Label1: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
  private
    FNEZZFactoryProduto: iNEZZFactoryProdutos;
    FNEZZModelsProdutos: iNEZZModelsProdutos;
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsProdutos: TNEZZViewsProdutos;

implementation

{$R *.dfm}


procedure TNEZZViewsProdutos.BtnAdicionarClick(Sender: TObject);
begin
  try
    if not Assigned(NEZZViewsProdutosAdicionar) then
      Application.CreateForm(TNEZZViewsProdutosAdicionar, NEZZViewsProdutosAdicionar);

    NEZZViewsProdutosAdicionar.ShowModal;
    NEZZViewsProdutosAdicionar.Free;

    CarregarDados;
  finally
    FreeAndNil(NEZZViewsProdutosAdicionar);
  end;
end;

procedure TNEZZViewsProdutos.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsProdutos.CarregarDados;
begin
  FNEZZFactoryProduto := TNEZZFactoryProdutos
    .New
    .DataSource(dsProdutos)
    .ListarProdutos;

  with GridProdutosDBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;

procedure TNEZZViewsProdutos.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

end.
