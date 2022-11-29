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
  Data.DB, cxCurrencyEdit, cxDBEdit;

type
  TNEZZViewsCaixaAbrir = class(TForm)
    pnContent: TPanel;
    Label2: TLabel;
    pnFooter: TPanel;
    BtnApagar: TcxButton;
    BtnSalvar: TcxButton;
    pnHeader: TPanel;
    Label1: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    Date: TcxDateEdit;
    Label3: TLabel;
    pnRight: TPanel;
    Image1: TImage;
    dsCaixa: TDataSource;
    edValor: TcxDBCurrencyEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
  private
    FNEZZAbrirCaixa: iNEZZServicesCadastrar;
  public

  end;

var
  NEZZViewsCaixaAbrir: TNEZZViewsCaixaAbrir;

implementation

uses
  NEZZ.Controllers.Sessao, NEZZ.Factory.Caixa, NEZZ.Models.Caixa;

{$R *.dfm}

procedure TNEZZViewsCaixaAbrir.BtnApagarClick(Sender: TObject);
begin
  edValor.Clear;
end;

procedure TNEZZViewsCaixaAbrir.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsCaixaAbrir.BtnSalvarClick(Sender: TObject);
begin
  edValor.ValidateEdit();
  Date.ValidateEdit();

  try
    TNEZZFactoryCaixa
      .New
      .Abrircaixa(
        edValor.Value,
        Date.Date
      );

    MessageDlg('Caixa aberto com sucesso!!' , mtInformation , [mbOk] , 0);
    Close;
  except
  on e: Exception do
  begin
    MessageDlg('Erro ao abrir caixa!' + #13 + e.message , mtWarning , [mbOk] , 0);
    edValor.SetFocus;
  end;
  end;
end;

end.
