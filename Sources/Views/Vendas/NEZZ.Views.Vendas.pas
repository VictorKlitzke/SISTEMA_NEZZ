unit NEZZ.Views.Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TNEZZViewsVenda = class(TForm)
    dsVendas: TDataSource;
    pnContent: TPanel;
    dsVendasGrid: TcxGrid;
    dsVendasGridDBTableView1: TcxGridDBTableView;
    dsVendasGridLevel1: TcxGridLevel;
    pnFooter: TPanel;
    btnDeletar: TcxButton;
    btnImprimir: TcxButton;
    pnHeader: TPanel;
    lbVendas: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsVenda: TNEZZViewsVenda;

implementation

{$R *.dfm}

end.
