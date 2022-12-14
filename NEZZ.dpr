program NEZZ;















uses
  Vcl.Forms,
  Vcl.Controls,
  System.SysUtils,
  NEZZ.Views.Principal in 'Sources\Views\NEZZ.Views.Principal.pas' {NEZZViewsPrincipal},
  NEZZ.Services.Conexao in 'Sources\Services\NEZZ.Services.Conexao.pas',
  NEZZ.Services.Query in 'Sources\Services\NEZZ.Services.Query.pas',
  NEZZViewBase in 'Sources\Views\Base\NEZZViewBase.pas' {NEZZViewsBase},
  NEZZ.Views.Cliente.Adicionar in 'Sources\Views\Clientes\NEZZ.Views.Cliente.Adicionar.pas' {NEZZViewsClienteAdicionar},
  NEZZ.Views.Clientes in 'Sources\Views\Clientes\NEZZ.Views.Clientes.pas' {NEZZViewsClientes},
  NEZZ.Controllers.Sessao in 'Sources\Controllers\NEZZ.Controllers.Sessao.pas',
  NEZZ.Models.Cliente in 'Sources\Models\NEZZ.Models.Cliente.pas',
  NEZZ.Factory.Cliente in 'Sources\Factories\NEZZ.Factory.Cliente.pas',
  ConexaoDados in 'ConexaoDados.pas' {DataModule1: TDataModule},
  NEZZ.Views.Cliente.Editar in 'Sources\Views\Clientes\NEZZ.Views.Cliente.Editar.pas' {NEZZViewsClienteEditar},
  NEZZ.Views.Usuario in 'Sources\Views\Usuarios\NEZZ.Views.Usuario.pas' {NEZZViewsUsuario},
  NEZZ.Views.Usuario.Login in 'Sources\Views\Usuarios\NEZZ.Views.Usuario.Login.pas' {NEZZViewsUsuarioLogin},
  NEZZ.Factory.Usuario in 'Sources\Factories\NEZZ.Factory.Usuario.pas',
  NEZZ.Models.Usuario in 'Sources\Models\NEZZ.Models.Usuario.pas',
  NEZZ.Views.Usuario.Adicionar in 'Sources\Views\Usuarios\NEZZ.Views.Usuario.Adicionar.pas' {NEZZViewsUsuarioAdicionar},
  NEZZ.Views.Vendas in 'Sources\Views\Vendas\NEZZ.Views.Vendas.pas' {NEZZViewsVenda},
  NEZZ.Factory.Autenticacao in 'Sources\Factories\NEZZ.Factory.Autenticacao.pas',
  NEZZ.Views.Fornecedor in 'Sources\Views\Fornecedores\NEZZ.Views.Fornecedor.pas' {NEZZViewsFornecedor},
  NEZZ.Views.Usuario.Editar in 'Sources\Views\Usuarios\NEZZ.Views.Usuario.Editar.pas' {NEZZViewsUsuarioEditar},
  NEZZ.Models.Fornecedor in 'Sources\Models\NEZZ.Models.Fornecedor.pas',
  NEZZ.Factory.Fornecedor in 'Sources\Factories\NEZZ.Factory.Fornecedor.pas',
  NEZZ.Models.Produto in 'Sources\Models\NEZZ.Models.Produto.pas',
  NEZZ.Factory.Produto in 'Sources\Factories\NEZZ.Factory.Produto.pas',
  NEZZ.Views.Fornecedor.Adicionar in 'Sources\Views\Fornecedores\NEZZ.Views.Fornecedor.Adicionar.pas' {NEZZViewsFornecedorAdicionar},
  NEZZ.Views.Fornecedor.Editar in 'Sources\Views\Fornecedores\NEZZ.Views.Fornecedor.Editar.pas' {NEZZViewsFornecedorEditar},
  NEZZ.Views.Caixa.Adicionar in 'Sources\Views\Caixa\NEZZ.Views.Caixa.Adicionar.pas' {NEZZViewsCaixaAbrir},
  NEZZ.Models.Caixa in 'Sources\Models\NEZZ.Models.Caixa.pas',
  NEZZ.Factory.Caixa in 'Sources\Factories\NEZZ.Factory.Caixa.pas',
  NEZZ.Views.Caixa.Listagem in 'Sources\Views\Caixa\NEZZ.Views.Caixa.Listagem.pas' {Form2},
  NEZZ.Views.Vendas.Faturar in 'Sources\Views\Vendas\NEZZ.Views.Vendas.Faturar.pas' {NEZZViewsVendasFaturar},
  NEZZ.Views.Produtos in 'Sources\Views\Produtos\NEZZ.Views.Produtos.pas' {NEZZViewsProdutos},
  NEZZ.Views.Produtos.Adicionar in 'Sources\Views\Produtos\NEZZ.Views.Produtos.Adicionar.pas' {NEZZViewsProdutosAdicionar},
  NEZZ.Views.Produtos.Editar in 'Sources\Views\Produtos\NEZZ.Views.Produtos.Editar.pas' {NEZZViewsProdutosEditar},
  NEZZ.Views.Vendas.Adicionar.Cliente in 'Sources\Views\Vendas\NEZZ.Views.Vendas.Adicionar.Cliente.pas' {NEZZViewsVendaAdicionarCliente},
  NEZZ.Views.Vendas.Finalizar in 'Sources\Views\Vendas\NEZZ.Views.Vendas.Finalizar.pas' {NEZZViewsVendasFinalizar},
  NEZZ.Views.Vendas.FormaPgt.Dinheiro in 'Sources\Views\Vendas\NEZZ.Views.Vendas.FormaPgt.Dinheiro.pas' {NEZZViewsFormaPgtDinheiro},
  NEZZ.Views.Vendas.FormaPgt.Pix in 'Sources\Views\Vendas\NEZZ.Views.Vendas.FormaPgt.Pix.pas' {NEZZViewsVendasFormaPgtPix},
  NEZZ.Generic.Mensagem in 'Sources\Generic\NEZZ.Generic.Mensagem.pas' {NEZZGenericMensagem},
  NEZZ.Generic.Utilities in 'Sources\Generic\NEZZ.Generic.Utilities.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TNEZZViewsPrincipal, NEZZViewsPrincipal);
  Application.CreateForm(TNEZZViewsUsuarioLogin, NEZZViewsUsuarioLogin);
  Application.CreateForm(TNEZZViewsBase, NEZZViewsBase);
  Application.CreateForm(TNEZZViewsClientes, NEZZViewsClientes);
  Application.CreateForm(TNEZZViewsClienteAdicionar, NEZZViewsClienteAdicionar);
  Application.CreateForm(TNEZZViewsClientes, NEZZViewsClientes);
  Application.CreateForm(TNEZZViewsClienteEditar, NEZZViewsClienteEditar);
  Application.CreateForm(TNEZZViewsUsuario, NEZZViewsUsuario);
  Application.CreateForm(TNEZZViewsUsuarioAdicionar, NEZZViewsUsuarioAdicionar);
  Application.CreateForm(TNEZZViewsVenda, NEZZViewsVenda);
  Application.CreateForm(TNEZZViewsFornecedor, NEZZViewsFornecedor);
  Application.CreateForm(TNEZZViewsUsuarioEditar, NEZZViewsUsuarioEditar);
  Application.CreateForm(TNEZZViewsFornecedorAdicionar, NEZZViewsFornecedorAdicionar);
  Application.CreateForm(TNEZZViewsFornecedorEditar, NEZZViewsFornecedorEditar);
  Application.CreateForm(TNEZZViewsCaixaAbrir, NEZZViewsCaixaAbrir);
  Application.CreateForm(TNEZZViewsVendasFaturar, NEZZViewsVendasFaturar);
  Application.CreateForm(TNEZZViewsProdutos, NEZZViewsProdutos);
  Application.CreateForm(TNEZZViewsProdutosAdicionar, NEZZViewsProdutosAdicionar);
  Application.CreateForm(TNEZZViewsProdutosEditar, NEZZViewsProdutosEditar);
  Application.CreateForm(TNEZZViewsVendaAdicionarCliente, NEZZViewsVendaAdicionarCliente);
  Application.CreateForm(TNEZZViewsVendasFinalizar, NEZZViewsVendasFinalizar);
  Application.CreateForm(TNEZZViewsFormaPgtDinheiro, NEZZViewsFormaPgtDinheiro);
  Application.CreateForm(TNEZZViewsVendasFormaPgtPix, NEZZViewsVendasFormaPgtPix);
  Application.CreateForm(TNEZZGenericMensagem, NEZZGenericMensagem);
  NEZZViewsUsuarioLogin.ShowModal;

    if NEZZViewsUsuarioLogin.ModalResult = mrCancel then
  begin
    FreeAndNil(NEZZViewsUsuarioLogin);
    FreeAndNil(NEZZViewsPrincipal);
    Application.Terminate;
  end else
  begin
    Application.Run;
  end;
end.
