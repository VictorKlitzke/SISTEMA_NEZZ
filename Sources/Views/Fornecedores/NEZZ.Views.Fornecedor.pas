
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
  NEZZ.Models.Fornecedor;

type
  TNEZZViewsFornecedor = class(TForm)
    pnContent: TPanel;
    dsFornecedoresGrid: TcxGrid;
    dsFornecedoresGridDBTableView1: TcxGridDBTableView;
    dsFornecedoresGridLevel1: TcxGridLevel;
    pnFooter: TPanel;
    btnAdicionar: TcxButton;
    pnHeader: TPanel;
    lbUsuario: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    pnPesquisa: TPanel;
    edPesquisa: TEdit;
    dsFornecedores: TDataSource;
    BtnImprimir: TcxButton;
    btnDeletar: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    FNEZZFactoryFornecedor: iNEZZFactoryFornecedor;
    FNEZZModelsFornecedor: iNEZZModelsFornecedor;
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsFornecedor: TNEZZViewsFornecedor;

implementation

{$R *.dfm}

{ TNEZZViewsFornecedor }

procedure TNEZZViewsFornecedor.btnAdicionarClick(Sender: TObject);
begin
// ADD
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

procedure TNEZZViewsFornecedor.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

end.
