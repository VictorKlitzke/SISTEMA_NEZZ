
unit NEZZ.Views.Fornecedor;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
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
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  Vcl.ExtCtrls,
  NEZZ.Factory.Fornecedor,
  NEZZ.Models.Fornecedor,
  NEZZ.Views.Fornecedor.Adicionar, Vcl.WinXCtrls;

type
  TNEZZViewsFornecedor = class(TForm)
    pnContent: TPanel;
    dsFornecedoresGrid: TcxGrid;
    dsFornecedoresGridDBTableView1: TcxGridDBTableView;
    dsFornecedoresGridLevel1: TcxGridLevel;
    pnFooter: TPanel;
    btnAdicionar: TcxButton;
    pnPesquisa: TPanel;
    dsFornecedores: TDataSource;
    BtnImprimir: TcxButton;
    btnDeletar: TcxButton;
    BtnEditar: TcxButton;
    BoxPesquisa: TSearchBox;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure BoxPesquisaChange(Sender: TObject);
  private
    FNEZZFactoryFornecedor: iNEZZFactoryFornecedor;
    FNEZZModelsFornecedor: iNEZZModelsFornecedor;
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsFornecedor: TNEZZViewsFornecedor;

implementation

uses
  NEZZ.Views.Fornecedor.Editar;

{$R *.dfm}

{ TNEZZViewsFornecedor }

procedure TNEZZViewsFornecedor.BoxPesquisaChange(Sender: TObject);
begin
  if BoxPesquisa.Text = '' then
  begin
    FNEZZFactoryFornecedor
  end;
end;

procedure TNEZZViewsFornecedor.btnAdicionarClick(Sender: TObject);
begin
  try
    if not Assigned(NEZZViewsFornecedorAdicionar) then
      Application.CreateForm(TNEZZViewsFornecedorAdicionar, NEZZViewsFornecedorAdicionar);

    NEZZViewsFornecedorAdicionar.ShowModal;
    NEZZViewsFornecedorAdicionar.Free;

    CarregarDados;
  finally
     FreeAndNil(NEZZViewsFornecedorAdicionar);
  end;
end;

procedure TNEZZViewsFornecedor.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsFornecedor.btnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente deletar esse produto?', mtConfirmation, mbYesNo, 0) = mrYes then
  try
    FNEZZFactoryFornecedor := TNEZZFactoryFronecedor
      .New
      .DeletarFornecedor(
        dsFornecedores.DataSet.FieldByName('ID').AsInteger
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

procedure TNEZZViewsFornecedor.CarregarDados;
begin
  FNEZZFactoryFornecedor := TNEZZFactoryFronecedor
    .New
    .DataSource(dsFornecedores)
    .ListarFornecedor;

  with dsFornecedoresGridDBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;

procedure TNEZZViewsFornecedor.BtnEditarClick(Sender: TObject);
begin
  if not Assigned(NEZZViewsFornecedorEditar) then
    Application.CreateForm(TNEZZViewsFornecedorEditar, NEZZViewsFornecedorEditar);

  NEZZViewsFornecedorEditar.Fornecedor(dsFornecedores.DataSet.FieldByName('ID').AsInteger);

  NEZZViewsFornecedorEditar.ShowModal;
  FreeAndNil(NEZZViewsFornecedorEditar);

  CarregarDados;
end;

procedure TNEZZViewsFornecedor.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

end.
