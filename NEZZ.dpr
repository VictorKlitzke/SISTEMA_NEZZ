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
  NEZZ.Views.MSG_CRUD in 'Sources\Views\MSG_CRUD\NEZZ.Views.MSG_CRUD.pas' {Form1},
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
  NEZZ.Views.Fornecedor.Adicionar in 'Sources\Views\Fornecedores\NEZZ.Views.Fornecedor.Adicionar.pas' {NEZZViewsFornecedorAdicionar};

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
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TNEZZViewsUsuario, NEZZViewsUsuario);
  Application.CreateForm(TNEZZViewsUsuarioAdicionar, NEZZViewsUsuarioAdicionar);
  Application.CreateForm(TNEZZViewsVenda, NEZZViewsVenda);
  Application.CreateForm(TNEZZViewsFornecedor, NEZZViewsFornecedor);
  Application.CreateForm(TNEZZViewsUsuarioEditar, NEZZViewsUsuarioEditar);
  Application.CreateForm(TNEZZViewsFornecedorAdicionar, NEZZViewsFornecedorAdicionar);
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
