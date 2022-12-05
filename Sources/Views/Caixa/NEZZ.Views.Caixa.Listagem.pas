unit NEZZ.Views.Caixa.Listagem;

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
  cxContainer,
  cxEdit,
  Vcl.ComCtrls,
  dxCore,
  cxDateUtils,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxCalendar,
  Vcl.StdCtrls,
  cxButtons,
  Vcl.ExtCtrls,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
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
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Autenticacao,
  NEZZ.Factory.Caixa,
  NEZZ.Models.Caixa;

type
  TNEZZViewsCaixaListagem = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsListagemCaixa: TDataSource;
    pnPeriodo: TPanel;
    dateInicio: TcxDateEdit;
    dateFim: TcxDateEdit;
    BtnImprimir: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FNEZZFactoryCaixa : iNEZZFactoryCaixa;
  public
    procedure CarregarCaixa;
  end;

var
  NEZZViewsCaixaListagem: TNEZZViewsCaixaListagem;

implementation

{$R *.dfm}

procedure TNEZZViewsCaixaListagem.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsCaixaListagem.CarregarCaixa;
begin
  FNEZZFactoryCaixa := TNEZZFactoryCaixa
    .New
    .DataSource(dsListagemCaixa)
    .ListarCaixas;

  with cxGrid1DBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;

procedure TNEZZViewsCaixaListagem.FormCreate(Sender: TObject);
begin
  CarregarCaixa;
end;

end.
