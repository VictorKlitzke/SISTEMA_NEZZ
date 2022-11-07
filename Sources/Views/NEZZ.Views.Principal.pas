unit NEZZ.Views.Principal;

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
  Vcl.StdCtrls,
  cxButtons,
  dxGDIPlusClasses,
  Vcl.ExtCtrls,
  NEZZ.Views.Clientes,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  System.UITypes, NEZZ.Views.Fornecedor;

type
  TNEZZViewsPrincipal = class(TForm)
    pnContent: TPanel;
    imgNEZZ: TImage;
    pnFooter: TPanel;
    pnVersao: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    pnHeader: TPanel;
    pnUsuario: TPanel;
    btnEnviar: TcxButton;
    pnNomeUsuario: TPanel;
    lbl3: TLabel;
    pnEmpresafilial: TPanel;
    lblEMPRESA: TLabel;
    lblNEZZ: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    pnMenu: TPanel;
    BtnClientes: TcxButton;
    BtnFornecedores: TcxButton;
    BtnProdutos: TcxButton;
    BtnVendas: TcxButton;
    BtnFaturar: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnCloseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure BtnVendasClick(Sender: TObject);
    procedure lbl3DblClick(Sender: TObject);
    procedure BtnFornecedoresClick(Sender: TObject);
  private
    FConexao : iNEZZServicesConexao;
  public
    { Public declarations }
  end;

var
  NEZZViewsPrincipal: TNEZZViewsPrincipal;

implementation

uses
  NEZZ.Views.Usuario, NEZZ.Views.Vendas, NEZZ.Controllers.Sessao;

{$R *.dfm}

procedure TNEZZViewsPrincipal.BtnClientesClick(Sender: TObject);
begin
  if Assigned(NEZZViewsClientes) then FreeAndNil(NEZZViewsClientes);
  if not Assigned(NEZZViewsClientes) then
    Application.CreateForm(TNEZZViewsClientes, NEZZViewsClientes);

  NEZZViewsClientes.Parent := pnContent;
  NEZZViewsClientes.Show;
end;

procedure TNEZZViewsPrincipal.btnCloseClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente sair?',
    mtConfirmation,
    mbYesNo,
    1
    ) = mrYes then Close;
end;

procedure TNEZZViewsPrincipal.btnCloseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    if MessageDlg('Deseja realmente sair?',
       mtConfirmation,
       mbYesNo,
       1
       ) = mrYes then Close;
  end;
end;

procedure TNEZZViewsPrincipal.btnEnviarClick(Sender: TObject);
begin
  if Assigned(NEZZViewsUsuario) then FreeAndNil(NEZZViewsUsuario);
  if not Assigned(NEZZViewsUsuario) then
    Application.CreateForm(TNEZZViewsUsuario, NEZZViewsUsuario);

    NEZZViewsUsuario.Parent := pnContent;
    NEZZViewsUsuario.Show;
end;

procedure TNEZZViewsPrincipal.BtnFornecedoresClick(Sender: TObject);
begin
  if Assigned(NEZZViewsFornecedor) then FreeAndNil(NEZZViewsFornecedor);
  if not Assigned(NEZZViewsFornecedor) then
    Application.CreateForm(TNEZZViewsFornecedor, NEZZViewsFornecedor);

  NEZZViewsFornecedor.Parent := pnContent;
  NEZZViewsFornecedor.Show;

end;

procedure TNEZZViewsPrincipal.BtnVendasClick(Sender: TObject);
begin
  if Assigned(NEZZViewsVenda) then FreeAndNil(NEZZViewsVenda);
  if not Assigned(NEZZViewsVenda) then
    Application.CreateForm(TNEZZViewsVenda, NEZZViewsVenda);

  NEZZViewsVenda.Parent := pnContent;
  NEZZViewsVenda.Show;

end;

procedure TNEZZViewsPrincipal.FormCreate(Sender: TObject);
begin
  try
    FConexao := TNEZZServicesConexao
      .New
      .Conectar;
  except
    on e: NEZZMSGERROR do
    begin
      MessageDlg(e.Message, mtError, [mbOK], 0);
      Application.Terminate;
    end;
  end;
end;

procedure TNEZZViewsPrincipal.lbl3DblClick(Sender: TObject);
begin
  ShowMessage(TNEZZControllerSessao.New.Nome);
end;

end.
