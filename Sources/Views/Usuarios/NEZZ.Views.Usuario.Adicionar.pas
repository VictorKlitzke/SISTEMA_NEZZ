unit NEZZ.Views.Usuario.Adicionar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, Vcl.ExtCtrls, Data.DB;

type
  TNEZZViewsUsuarioAdicionar = class(TForm)
    dsUsuarios: TDataSource;
    pnContent: TPanel;
    lbCadastrar: TLabel;
    edNome: TcxTextEdit;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    edCidade: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edBairro: TcxTextEdit;
    pnButtons: TPanel;
    btnLimpar: TcxButton;
    btnSalvar: TcxButton;
    pnHeader: TPanel;
    lbusuarios: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsUsuarioAdicionar: TNEZZViewsUsuarioAdicionar;

implementation

{$R *.dfm}

procedure TNEZZViewsUsuarioAdicionar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
