
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
  NEZZ.Views.Fornecedor.Adicionar;

type
  TNEZZViewsFornecedor = class(TForm)
    pnContent: TPanel;
    dsFornecedoresGrid: TcxGrid;
    dsFornecedoresGridDBTableView1: TcxGridDBTableView;
    dsFornecedoresGridLevel1: TcxGridLevel;
    pnFooter: TPanel;
    btnAdicionar: TcxButton;
    pnPesquisa: TPanel;
    edPesquisa: TEdit;
    dsFornecedores: TDataSource;
    BtnImprimir: TcxButton;
    btnDeletar: TcxButton;
    BtnEditar: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
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
