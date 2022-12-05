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
  System.UITypes,
  NEZZ.Views.Fornecedor, NEZZ.Views.Vendas.Adicionar.Produto,
  NEZZ.Views.Produtos;

type
  TNEZZViewsPrincipal = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    pnVersao: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    pnHeader: TPanel;
    pnUsuario: TPanel;
    pnNomeUsuario: TPanel;
    lbl3: TLabel;
    pnEmpresafilial: TPanel;
    lblEMPRESA: TLabel;
    lblNEZZ: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    pnMenu: TPanel;
    BtnFornecedores: TcxButton;
    BtnProdutos: TcxButton;
    pnSubGrupoVendas: TPanel;
    BtnFaturar: TcxButton;
    BtnMovimentacao: TcxButton;
    BtnVendas: TcxButton;
    pnSubGrupoCaixa: TPanel;
    edAbrirCaixa: TcxButton;
    edListagemCaixa: TcxButton;
    pnCaixa: TPanel;
    BtnCaixa: TcxButton;
    MainMenu1: TMainMenu;
    pnSubGrupoParceiros: TPanel;
    BtnUsuario: TcxButton;
    BtnClientes: TcxButton;
    BtnParceiros: TcxButton;
    imgNEZZ: TImage;
    procedure btnCloseClick(Sender: TObject);
    procedure btnCloseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnUsuarioClick(Sender: TObject);
    procedure BtnVendasClick(Sender: TObject);
    procedure lbl3DblClick(Sender: TObject);
    procedure BtnFornecedoresClick(Sender: TObject);
    procedure imgNEZZMouseEnter(Sender: TObject);
    procedure BtnMovimentacaoMouseEnter(Sender: TObject);
    procedure BtnCaixaMouseEnter(Sender: TObject);
    procedure edAbrirCaixaClick(Sender: TObject);
    procedure edListagemCaixaClick(Sender: TObject);
    procedure BtnParceirosMouseEnter(Sender: TObject);
    procedure BtnFaturarClick(Sender: TObject);
    procedure BtnProdutosClick(Sender: TObject);
  private
    FConexao : iNEZZServicesConexao;
  public
    procedure SubGrupos;
  end;

var
  NEZZViewsPrincipal: TNEZZViewsPrincipal;

implementation

uses
  NEZZ.Views.Usuario,
  NEZZ.Controllers.Sessao,
  NEZZ.Views.Caixa.Adicionar,
  NEZZ.Views.Caixa.Listagem,
  NEZZ.Views.Vendas;

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

procedure TNEZZViewsPrincipal.BtnUsuarioClick(Sender: TObject);
begin
  if Assigned(NEZZViewsUsuario) then FreeAndNil(NEZZViewsUsuario);
  if not Assigned(NEZZViewsUsuario) then
    Application.CreateForm(TNEZZViewsUsuario, NEZZViewsUsuario);

    NEZZViewsUsuario.Parent := pnContent;
    NEZZViewsUsuario.Show;
end;

procedure TNEZZViewsPrincipal.BtnFaturarClick(Sender: TObject);
begin
  if Assigned(NEZZViewsAdicionarProdutoVendas) then FreeAndNil(NEZZViewsAdicionarProdutoVendas);
  if not Assigned(NEZZViewsAdicionarProdutoVendas) then
    Application.CreateForm(TNEZZViewsAdicionarProdutoVendas, NEZZViewsAdicionarProdutoVendas);

  NEZZViewsAdicionarProdutoVendas.Parent := pnContent;
  NEZZViewsAdicionarProdutoVendas.Show;

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

procedure TNEZZViewsPrincipal.edAbrirCaixaClick(Sender: TObject);
begin
  if Assigned(NEZZViewsCaixaAbrir) then FreeAndNil(NEZZViewsCaixaAbrir);
  if not Assigned(NEZZViewsCaixaAbrir) then
    Application.CreateForm(TNEZZViewsCaixaAbrir, NEZZViewsCaixaAbrir);

  NEZZViewsCaixaAbrir.Parent := pnContent;
  NEZZViewsCaixaAbrir.Show;
end;

procedure TNEZZViewsPrincipal.edListagemCaixaClick(Sender: TObject);
begin
  if Assigned(NEZZViewsCaixaListagem) then FreeAndNil(NEZZViewsCaixaListagem);
  if not Assigned(NEZZViewsCaixaListagem) then
    Application.CreateForm(TNEZZViewsCaixaListagem, NEZZViewsCaixaListagem);

  NEZZViewsCaixaListagem.Parent := pnContent;
  NEZZViewsCaixaListagem.Show;
end;

procedure TNEZZViewsPrincipal.BtnCaixaMouseEnter(Sender: TObject);
begin
  SubGrupos;
  pnSubGrupoCaixa.Top := 300;
  pnSubGrupoCaixa.Left := 0;
  pnSubGrupoCaixa.Visible := True;
end;

procedure TNEZZViewsPrincipal.BtnMovimentacaoMouseEnter(Sender: TObject);
begin
  SubGrupos;
  pnSubGrupoVendas.Top := 150;
  pnSubGrupoVendas.Left := 0;
  pnSubGrupoVendas.Visible := True;
end;

procedure TNEZZViewsPrincipal.BtnParceirosMouseEnter(Sender: TObject);
begin
  SubGrupos;
  pnSubGrupoParceiros.Top := 282;
  pnSubGrupoParceiros.Left := 137;
  pnSubGrupoParceiros.Visible := True;
end;

procedure TNEZZViewsPrincipal.BtnProdutosClick(Sender: TObject);
begin
  if Assigned(NEZZViewsProdutos) then FreeAndNil(NEZZViewsProdutos);
  if not Assigned(NEZZViewsProdutos) then
    Application.CreateForm(TNEZZViewsProdutos, NEZZViewsProdutos);

  NEZZViewsProdutos.Parent := pnContent;
  NEZZViewsProdutos.Show;

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

procedure TNEZZViewsPrincipal.imgNEZZMouseEnter(Sender: TObject);
begin
  pnSubGrupoVendas.Visible := False;
  pnSubGrupoCaixa.Visible := False;
  pnSubGrupoParceiros.Visible := False;
end;

procedure TNEZZViewsPrincipal.lbl3DblClick(Sender: TObject);
begin
  ShowMessage(TNEZZControllerSessao.New.Nome);
end;

procedure TNEZZViewsPrincipal.SubGrupos;
begin
  pnSubGrupoVendas.Visible := False;
  pnSubGrupoCaixa.Visible := False;
  pnSubGrupoParceiros.Visible := False;
end;

end.
