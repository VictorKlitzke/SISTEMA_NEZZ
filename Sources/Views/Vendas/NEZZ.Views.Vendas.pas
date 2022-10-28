unit NEZZ.Views.Vendas;

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
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  Vcl.StdCtrls,
  cxButtons;

type
  TNEZZViewsVendas = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    pnClose: TPanel;
    pnHeader: TPanel;
    btnClose: TcxButton;
    lbVendas: TLabel;
    dsVendasGridDBTableView1: TcxGridDBTableView;
    dsVendasGridLevel1: TcxGridLevel;
    dsVendasGrid: TcxGrid;
    dsVendas: TDataSource;
    btnDeletar: TcxButton;
    btnImprimir: TcxButton;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsVendas: TNEZZViewsVendas;

implementation

{$R *.dfm}

procedure TNEZZViewsVendas.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
