unit NEZZ.Views.Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TNEZZViewsUsuario = class(TForm)
    pnHeader: TPanel;
    pnGRID: TPanel;
    pnContent: TPanel;
    pnFooter: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsUsuario: TNEZZViewsUsuario;

implementation

{$R *.dfm}

end.
