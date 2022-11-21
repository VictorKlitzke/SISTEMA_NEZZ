unit NEZZ.Views.Caixa.Adicionar;

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
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxTextEdit,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  dxCore,
  cxDateUtils,
  dxGDIPlusClasses,
  cxMaskEdit,
  cxDropDownEdit,
  cxCalendar,
  NEZZ.Services.Query,
  Data.DB;

type
  TNEZZViewsCaixaAbrir = class(TForm)
    pnContent: TPanel;
    Label2: TLabel;
    edValor: TcxTextEdit;
    pnFooter: TPanel;
    BtnApagar: TcxButton;
    BtnSalvar: TcxButton;
    pnHeader: TPanel;
    Label1: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    cxDateEdit1: TcxDateEdit;
    Label3: TLabel;
    pnRight: TPanel;
    Image1: TImage;
    dsCaixa: TDataSource;
    procedure btnCloseClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FNEZZCaixa: iNEZZServicesCadastrar;
    FNEZZPosicao: Integer;
  public

  end;

var
  NEZZViewsCaixaAbrir: TNEZZViewsCaixaAbrir;

implementation

uses
  NEZZ.Controllers.Sessao;

{$R *.dfm}

procedure TNEZZViewsCaixaAbrir.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsCaixaAbrir.BtnSalvarClick(Sender: TObject);
begin
  FNEZZCaixa.Salvar;
  ModalResult := mrOk;
end;

procedure TNEZZViewsCaixaAbrir.FormCreate(Sender: TObject);
begin
//  FNEZZPosicao := 0;
//
//  FNEZZCaixa := TNEZZServicesCadastrar
//    .New
//    .DataSource(dsCaixa)
//    .SQL('SELECT * FROM CAIXA_ABRIR WHERE ID = :ID')
//    .Parametro('ID' , 0)
//    .Abrir
//    .Inserir
//    .Campo('STATUS' , 0)
//    .Campo('DATA_ABERTURA' , Date)
//    .Campo('DINHEIRO' , 0)
//    .Salvar
//    .Editar;
end;

end.
