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
  Vcl.Dialogs, NEZZ.Views.Clientes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TNEZZViewsClientes1 = class(TNEZZViewsClientes)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsClientes1: TNEZZViewsClientes1;

implementation

{$R *.dfm}

end.
