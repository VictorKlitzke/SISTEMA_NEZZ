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
  NEZZ.Models.Produto,
  NEZZ.Views.Produtos.Adicionar,
  Vcl.WinXCtrls,
  System.UITypes;

type
  TNEZZViewsProdutos = class(TForm)
    pnFooter: TPanel;
    pnContent: TPanel;
    GridProdutosDBTableView1: TcxGridDBTableView;
    GridProdutosLevel1: TcxGridLevel;
    GridProdutos: TcxGrid;
    dsProdutos: TDataSource;
    BtnEditar: TcxButton;
    BtnDeletar: TcxButton;
    BtnAdicionar: TcxButton;
    pnPesquisa: TPanel;
    BoxPesquisa: TSearchBox;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BoxPesquisaChange(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
  private
    FNEZZFactoryProduto: iNEZZFactoryProdutos;
    FNEZZModelsProdutos: iNEZZModelsProdutos;
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsProdutos: TNEZZViewsProdutos;

implementation

uses
  NEZZViewBase, NEZZ.Views.Produtos.Editar;

{$R *.dfm}


procedure TNEZZViewsProdutos.BoxPesquisaChange(Sender: TObject);
begin
  if BoxPesquisa.Text = '' then
  begin
    FNEZZFactoryProduto := TNEZZFactoryProdutos
      .New
      .DataSource(dsProdutos)
      .ListarProdutos;
  end
  else
  begin
    FNEZZFactoryProduto := TNEZZFactoryProdutos
      .New
      .DataSource(dsProdutos)
      .FiltrarProduto(BoxPesquisa.Text);
  end;
end;

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

procedure TNEZZViewsProdutos.BtnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente deletar esse produto?', mtConfirmation, mbYesNo, 0) = mrYes then
  try
    FNEZZFactoryProduto := TNEZZFactoryProdutos
      .New
      .DeletarProduto(
        dsProdutos.DataSet.FieldByName('ID').AsInteger
      );

    MessageDlg('Produto deletado com sucesso!!', mtInformation, [mbOK], 0);
  except
  on e: Exception do
  begin
    MessageDlg('Ocorreu um erro ao deletar o produto' + #13 + e.message , mtWarning , [mbOk] , 0);
  end;
  end;
  CarregarDados;
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

procedure TNEZZViewsProdutos.BtnEditarClick(Sender: TObject);
begin
  if not Assigned(NEZZViewsProdutosEditar) then
    Application.CreateForm(TNEZZViewsProdutosEditar, NEZZViewsProdutosEditar);

  NEZZViewsProdutosEditar.Produto(dsProdutos.DataSet.FieldByName('ID').AsInteger);

  NEZZViewsProdutosEditar.ShowModal;
  FreeAndNil(NEZZViewsProdutosEditar);

  CarregarDados;

end;

procedure TNEZZViewsProdutos.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

end.
