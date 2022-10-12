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
  NEZZ.Factory.Cliente in 'Sources\Factories\NEZZ.Factory.Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TNEZZViewsPrincipal, NEZZViewsPrincipal);
  Application.CreateForm(TNEZZViewsClientes, NEZZViewsClientes);
  Application.CreateForm(TNEZZViewsBase, NEZZViewsBase);
  Application.CreateForm(TNEZZViewsClienteAdicionar, NEZZViewsClienteAdicionar);
  Application.CreateForm(TNEZZViewsClientes, NEZZViewsClientes);
  Application.Run;
end.
