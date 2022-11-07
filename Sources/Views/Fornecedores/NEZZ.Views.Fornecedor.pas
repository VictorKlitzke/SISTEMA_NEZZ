
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
  Vcl.ExtCtrls;

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
  private
    { Private declarations }
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsFornecedor: TNEZZViewsFornecedor;

implementation

{$R *.dfm}

{ TNEZZViewsFornecedor }

procedure TNEZZViewsFornecedor.CarregarDados;
begin

end;

end.
