program NEZZ;





uses
  Vcl.Forms,
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
<<<<<<< HEAD
  NEZZ.Models.Usuario in 'Sources\Models\NEZZ.Models.Usuario.pas',
  NEZZ.Factory.Usuario in 'Sources\Factories\NEZZ.Factory.Usuario.pas',
  NEZZ.Factory.Autenticacao in 'Sources\Factories\NEZZ.Factory.Autenticacao.pas',
  NEZZ.Views.Usuario.Adicionar in 'Sources\Views\Usuarios\NEZZ.Views.Usuario.Adicionar.pas' {NEZZViewsUsuarioAdicionar},
  NEZZ.Views.Vendas in 'Sources\Views\Vendas\NEZZ.Views.Vendas.pas' {NEZZViewsVendas};
=======
  login in 'C:\Users\HIFUZION\Desktop\paraovitao\login.pas' {Form2};
>>>>>>> TelaLogin

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(TNEZZViewsPrincipal, NEZZViewsPrincipal);
  Application.CreateForm(TNEZZViewsClientes, NEZZViewsClientes);
  Application.CreateForm(TNEZZViewsBase, NEZZViewsBase);
  Application.CreateForm(TNEZZViewsClienteAdicionar, NEZZViewsClienteAdicionar);
  Application.CreateForm(TNEZZViewsClientes, NEZZViewsClientes);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TNEZZViewsClienteEditar, NEZZViewsClienteEditar);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TNEZZViewsUsuario, NEZZViewsUsuario);
<<<<<<< HEAD
  Application.CreateForm(TNEZZViewsUsuarioAdicionar, NEZZViewsUsuarioAdicionar);
  Application.CreateForm(TNEZZViewsVendas, NEZZViewsVendas);
=======
  Application.CreateForm(TForm2, Form2);
>>>>>>> TelaLogin
  Application.Run;
end.
