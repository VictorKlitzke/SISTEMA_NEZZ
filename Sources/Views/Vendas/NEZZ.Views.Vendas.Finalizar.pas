unit NEZZ.Views.Vendas.Finalizar;

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
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  Vcl.StdCtrls,
  cxButtons,
  Vcl.ExtCtrls,
  NEZZViewBase,
  NEZZ.Views.Vendas.FormaPgt.Dinheiro,
  NEZZ.Views.Vendas;

type
  TNEZZViewsVendasFinalizar = class(TForm)
    pnFormaPgt: TPanel;
    pnListadeProdutos: TPanel;
    pnTotal: TPanel;
    BtnDinheiro: TcxButton;
    BtnCartão: TcxButton;
    BtnPix: TcxButton;
    BtnVoltar: TcxButton;
    Panel1: TPanel;
    BtnFinalizar: TcxButton;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    TOTAL: TLabel;
    Label3: TLabel;
    dsFinalizarVendas: TDataSource;
    Panel2: TPanel;
    procedure BtnVoltarClick(Sender: TObject);
    procedure BtnDinheiroClick(Sender: TObject);
    procedure BtnPixClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsVendasFinalizar: TNEZZViewsVendasFinalizar;

implementation

uses
  NEZZ.Views.Vendas.FormaPgt.Pix;

{$R *.dfm}

procedure TNEZZViewsVendasFinalizar.BtnDinheiroClick(Sender: TObject);
begin
  NEZZViewsFormaPgtDinheiro.Parent := pnListadeProdutos;
  NEZZViewsFormaPgtDinheiro.ShowModal;
end;

procedure TNEZZViewsVendasFinalizar.BtnPixClick(Sender: TObject);
begin
  if not Assigned(NEZZViewsVendasFormaPgtPix) then
    Application.CreateForm(TNEZZViewsVendasFormaPgtPix, NEZZViewsVendasFormaPgtPix);

  NEZZViewsVendasFormaPgtPix.Parent := pnListadeProdutos;
  NEZZViewsVendasFormaPgtPix.Show;
  NEZZViewsVendasFormaPgtPix.Free;
end;

procedure TNEZZViewsVendasFinalizar.BtnVoltarClick(Sender: TObject);
begin
  Close;
end;
end.
