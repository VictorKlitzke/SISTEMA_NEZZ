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
  Vcl.ExtCtrls, NEZZ.Views.Clientes;

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
    procedure btnCloseClick(Sender: TObject);
    procedure btnCloseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsPrincipal: TNEZZViewsPrincipal;

implementation

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

end.
