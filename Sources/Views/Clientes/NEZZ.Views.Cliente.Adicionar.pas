unit NEZZ.Views.Cliente.Adicionar;

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
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Models.Cliente,
  ConexaoDados,
  dxLayoutcxEditAdapters,
  dxLayoutContainer,
  cxClasses,
  System.UITypes,
  dxLayoutLookAndFeels,
  dxLayoutControl, ACBrBase, ACBrValidador;

type
  TNEZZViewsClienteAdicionar = class(TForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    edNome: TcxTextEdit;
    pnContent: TPanel;
    pnFooter: TPanel;
    edRazao: TcxTextEdit;
    edCPF: TcxTextEdit;
    edContato: TcxTextEdit;
    edCidade: TcxTextEdit;
    edBairro: TcxTextEdit;
    edEndereco: TcxTextEdit;
    BtnSalvar: TcxButton;
    BtnLimpar: TcxButton;
    edCEP: TcxTextEdit;
    edEmail: TcxTextEdit;
    Validador: TACBrValidador;
    procedure btnCloseClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edClientePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edRazaoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edCNPJPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edTelefonePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edCidadePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edBairroPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edCEPPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edEnderecoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCPFExit(Sender: TObject);
    procedure edCEPExit(Sender: TObject);
    procedure edEmailExit(Sender: TObject);

  private
    FNEZZQuery: iNEZZServicesCadastrar;

    procedure ValidarCliente(Sender: TObject;
    var DisplayValue: Variant;
    var ErrorText: TCaption;
    var Error: Boolean);

    procedure LimparEdits;

  public
  end;

var
  NEZZViewsClienteAdicionar: TNEZZViewsClienteAdicionar;

implementation

uses
    NEZZ.Factory.Cliente;

{$R *.dfm}

{ TNEZZViewsClienteForm }

procedure TNEZZViewsClienteAdicionar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsClienteAdicionar.BtnLimparClick(Sender: TObject);
begin
  LimparEdits;
end;

procedure TNEZZViewsClienteAdicionar.btnSalvarClick(Sender: TObject);
begin
  inherited;
  edNome.ValidateEdit();
  edRazao.ValidateEdit();
  edCPF.ValidateEdit();
  edContato.ValidateEdit();
  edEmail.ValidateEdit();
  edCidade.ValidateEdit();
  edBairro.ValidateEdit();
  edEndereco.ValidateEdit();
  edCEP.ValidateEdit();

  try
     TNEZZFactoryCliente
      .New
      .AdicionarCliente(
        edNome.Text,
        edRazao.Text,
        edCEP.Text,
        edContato.Text,
        edEmail.Text,
        edCidade.Text,
        edBairro.Text,
        edEndereco.Text,
        edCPF.Text
      );

    MessageDlg('Cliente registrado com sucesso!!' , mtInformation , [mbOk] , 0);
    Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do cliente!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsClienteAdicionar.edBairroPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Bairro ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.edCEPExit(Sender: TObject);
begin
  if edCEP.Text <> '' then
  begin
    Validador.Documento := edCEP.Text;
    Validador.TipoDocto := docCEP;

    if not Validador.Validar then
    begin
      Application.MessageBox('ATEN??O: CEP INVALIDO','ERRO CEP', MB_ICONERROR + MB_OK);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsClienteAdicionar.edCEPPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O CEP ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.edCidadePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'A Cidade ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.edClientePropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Cliente ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.edCNPJPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O CPF ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.edCPFExit(Sender: TObject);
begin
  if ( edCPF.Text ) <> '' then
  begin
    Validador.Documento := edCPF.Text;
    Validador.TipoDocto := docCPF;

    if not Validador.Validar then
    begin
      Application.MessageBox('ATEN??O: CPF INVALIDO','ERRO CPF', MB_ICONERROR + MB_OK);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsClienteAdicionar.edEmailExit(Sender: TObject);
begin
  if ( edEmail.Text ) <> '' then
  begin
    Validador.Documento := edEmail.Text;
    Validador.TipoDocto := docEmail;

    if not Validador.Validar then
    begin
      Application.MessageBox('ATEN??O: EMAIL INVALIDO','ERRO EMAIL', MB_ICONERROR + MB_OK);
      edEmail.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsClienteAdicionar.edEnderecoPropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Endere?o ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.edRazaoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Raz?o Social ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.edTelefonePropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Contato ? obrigat?rio';
end;

procedure TNEZZViewsClienteAdicionar.FormCreate(Sender: TObject);
begin
  edNome.Properties.OnValidate := ValidarCliente;
end;

procedure TNEZZViewsClienteAdicionar.LimparEdits;
var
  i: Integer;
begin
  for I := 0 to ComponentCount -1 do
    if Components[i] is TcxTextEdit then
    begin
      TcxTextEdit(Components[i]).Text := '';
    end;
end;

procedure TNEZZViewsClienteAdicionar.ValidarCliente(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);

var
  LCliente : Boolean;
begin

  LCliente := TNEZZFactoryCliente.New.ClienteExiste(edNome.Text);
  LCliente := TNEZZFactoryCliente.New.ClienteExiste(edCPF.Text);
  LCliente := TNEZZFactoryCliente.New.ClienteExiste(edRazao.Text);

  if LCliente then
  begin
    Error := True;
    ErrorText := 'J? existe um cliente com essa Raz?o Social. Tente outro!';
    Exit;
  end;

  Error := DisplayValue = '';
  ErrorText := 'O campo ? obrigat?rio';
  end;

end.
