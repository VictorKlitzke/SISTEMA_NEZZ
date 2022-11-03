unit NEZZ.Services.Query;

interface

uses
  System.Classes,
  System.Generics.Collections,
  Uni,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  iNEZZServicesCadastrar = interface
    ['{82BF054D-FE9C-4A6F-9289-94285D34B2F0}']

    function SomenteLeitura: iNEZZServicescadastrar;
    function DataSource(var ADataSource: TDataSource): iNEZZServicesCadastrar;
    function CampoChave(AValue: string): iNEZZServicesCadastrar;
    function Tabela(AValue: string): iNEZZServicesCadastrar;
    function Gerador(AValue: string): iNEZZServicesCadastrar;

    function SQL(AValue: string):  iNEZZServicesCadastrar;
    function SQLLimpar: iNEZZServicesCadastrar;

    function Inserir: iNEZZServicesCadastrar;
    function Editar: iNEZZServicesCadastrar;
    function Deletar: iNEZZServicesCadastrar;
    function Salvar: iNEZZServicesCadastrar;
    function Cancelar: iNEZZServicesCadastrar;

    function Abrir: iNEZZServicesCadastrar;
    function Fechar: iNEZZServicescadastrar;

    function Campo(AValue: String): TField; overload;
    function Campo(ANome: String; AValor: Variant): iNEZZServicesCadastrar; overload;
    function Parametro(AKey: string; AValue: Variant): iNEZZServicesCadastrar;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZServicesCadastrar;
    function TemRegistros: Boolean;
    function DataSet: TDataSet;
    function Apelido(ACampo, AValor: string): iNEZZServicesCadastrar;

    function PosicaoSalvar: iNEZZServicesCadastrar;
    function PosicaoVoltar: iNEZZServicesCadastrar;

  end;

  TNEZZServicesCadastrar = class(TInterfacedObject, iNEZZServicesCadastrar)
  private
    FQuery: TUniQuery;
    FTabela: string;
    FCampoChave: string;
    FBookMark: TBookmark;
    FApelidos: TDictionary<string, string>;

    procedure MontarSQL;
    procedure AntesAbrir(Dataset: TDataSet);
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iNEZZServicesCadastrar;


    function SomenteLeitura: iNEZZServicescadastrar;
    function DataSource(var ADataSource: TDataSource): iNEZZServicesCadastrar;
    function CampoChave(AValue: string): iNEZZServicesCadastrar;
    function Tabela(AValue: string): iNEZZServicesCadastrar;
    function Gerador(AValue: string): iNEZZServicesCadastrar;

    function SQL(AValue: string): iNEZZServicesCadastrar;
    function SQLLimpar: iNEZZServicesCadastrar;
    function Inserir: iNEZZServicesCadastrar;
    function Editar: iNEZZServicesCadastrar;
    function Deletar: iNEZZServicesCadastrar;
    function Salvar: iNEZZServicesCadastrar;
    function Cancelar: iNEZZServicesCadastrar;
    function Abrir: iNEZZServicesCadastrar;
    function Fechar: iNEZZServicesCadastrar;
    function Campo(AValue: String): TField; overload;
    function Campo(ANome: String; AValor: Variant): iNEZZServicesCadastrar; overload;
    function Parametro(AKey: string; AValue: Variant): iNEZZServicesCadastrar;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZServicesCadastrar;
    function TemRegistros: Boolean;
    function DataSet: TDataSet;
    function Apelido(ACampo, AValor: string): iNEZZServicesCadastrar;

    function PosicaoSalvar: iNEZZServicesCadastrar;
    function PosicaoVoltar: iNEZZServicesCadastrar;

  end;

implementation

uses
  NEZZ.Services.Conexao;

{ TServiceQuery }

function TNEZZServicesCadastrar.Abrir: iNEZZServicesCadastrar;
begin
  Result := Self;

  if FQuery.SQL.Text = '' then
    raise NEZZMSGERROR.Create('Não é possível abrir uma query sem instrução SQL');

  if FQuery.Active then
    FQuery.Close;

  FQuery.Open;
end;

procedure TNEZZServicesCadastrar.AntesAbrir(Dataset: TDataSet);
var
  i: Integer;
  LField: TField;
  LApelido: string;
begin
  Dataset.FieldDefs.Update;

  for i := 0 to Dataset.FieldDefs.Count - 1 do
    if Dataset.FindField(Dataset.FieldDefs[i].Name) = Nil then
      Dataset.FieldDefs.Items[i].CreateField(Dataset);


  if FCampoChave <> '' then
  begin
    TUniQuery(Dataset).KeyFields := FCampoChave;
    LField := Dataset.FindField(FCampoChave);
    LField.Required := False;
    LField.AutoGenerateValue := arAutoInc;
  end;

  for LField in Dataset.Fields do
    LField.Visible := False;

  for LApelido in FApelidos.Keys do
  begin
    LField := Dataset.FindField(LApelido);

    if Assigned(LField) then
    begin
      LField.Visible := True;
      LField.DisplayLabel := FApelidos[LApelido];
    end;
  end;

  for LField in Dataset.Fields do
  begin
    case LField.DataType of
      ftSmallint, ftInteger: TFloatField(LField).DisplayFormat := '#,##0';
      ftFloat, ftCurrency: TFloatField(LField).DisplayFormat := '#,##0.00';
    end;
  end;
end;

function TNEZZServicesCadastrar.Apelido(ACampo, AValor: string): iNEZZServicesCadastrar;
begin
  Result := Self;
  FApelidos.Add(ACampo, AValor);
end;

function TNEZZServicesCadastrar.Campo(ANome: String; AValor: Variant): iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.FieldByName(ANome).Value := AValor;
end;

function TNEZZServicesCadastrar.CampoChave(AValue: string): iNEZZServicesCadastrar;
begin
  Result := Self;
  FCampoChave := AValue;
end;

function TNEZZServicesCadastrar.Campo(AValue: String): TField;
begin
  Result := FQuery.FieldByName(AValue);
end;

function TNEZZServicesCadastrar.Cancelar: iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.Cancel;
end;

constructor TNEZZServicesCadastrar.Create;
begin
  FQuery := TUniQuery.Create(nil);
  FApelidos := TDictionary<string, string>.Create;

  with FQuery do
  begin
    Connection := TNEZZServicesConexao.New.Conexao;
    DMLRefresh := True;
    Debug := False;
    CachedUpdates := True;
    BeforeOpen := AntesAbrir;
  end;
end;

function TNEZZServicesCadastrar.DataSet: TDataSet;
begin
  Result := FQuery;
end;

function TNEZZServicesCadastrar.DataSource(
  var ADataSource: TDataSource): iNEZZServicesCadastrar;
begin
  Result := Self;
  ADataSource.DataSet := FQuery;
end;

function TNEZZServicesCadastrar.Deletar: iNEZZServicesCadastrar;
begin
  Result := Self;

  FQuery.Delete;

  if FQuery.CachedUpdates then
    FQuery.ApplyUpdates();
end;

destructor TNEZZServicesCadastrar.Destroy;
begin
  FQuery.DisposeOf;
  FApelidos.DisposeOf;
  inherited;
end;

function TNEZZServicesCadastrar.Editar: iNEZZServicesCadastrar;
begin
  Result := Self;

  FQuery.Edit;
end;

function TNEZZServicesCadastrar.Fechar: iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.Close;
end;

function TNEZZServicesCadastrar.Filtrar(ACampo: string; AValor: Variant): iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.DeleteWhere;
  FQuery.AddWhere(ACampo + ' = :' + ACampo);
  FQuery.ParamByName(ACampo).Value := AValor;
end;

function TNEZZServicesCadastrar.Gerador(AValue: string): iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.SpecificOptions.Values['KeyGenerator'] := AValue;
end;

function TNEZZServicesCadastrar.Inserir: iNEZZServicesCadastrar;
begin
  Result := Self;

  if not FQuery.Active then
    FQuery.Open;

  FQuery.Insert;
end;

procedure TNEZZServicesCadastrar.MontarSQL;
begin
 if FTabela = ''  then
    Exit;

  if FCampoChave = '' then
    Exit;

  with FQuery.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('  *');
    Add('FROM');
    Add('  ' + FTabela);
    Add('WHERE');
    Add('  ' + FCampoChave + ' = :' + FCampoChave);
  end;
end;

class function TNEZZServicesCadastrar.New: iNEZZServicesCadastrar;
begin
  Result := Self.Create;
end;

function TNEZZServicesCadastrar.Parametro(AKey: string; AValue: Variant): iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.ParamByName(AKey).Value := AValue;
end;

function TNEZZServicesCadastrar.PosicaoSalvar: iNEZZServicesCadastrar;
begin
  Result := Self;

  if FQuery.RecordCount < 0 then
    FBookMark := FQuery.GetBookmark;
end;

function TNEZZServicesCadastrar.PosicaoVoltar: iNEZZServicesCadastrar;
begin
  Result := Self;

  if FQuery.BookmarkValid(FBookMark) then
  begin
    FQuery.GotoBookmark(FBookMark);
    FQuery.FreeBookmark(FBookMark);
  end;

end;

function TNEZZServicesCadastrar.Salvar: iNEZZServicesCadastrar;
begin
  Result := Self;
  if FQuery.State in dsEditModes then
  begin
    FQuery.Post;

    if FQuery.CachedUpdates then
      FQuery.ApplyUpdates();
  end;
end;

function TNEZZServicesCadastrar.SomenteLeitura: iNEZZServicescadastrar;
begin
  Result := Self;
  FQuery.ReadOnly := True;
end;

function TNEZZServicesCadastrar.SQL(AValue: string): iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.SQL.Add(AValue);
end;

function TNEZZServicesCadastrar.SQLLimpar: iNEZZServicesCadastrar;
begin
  Result := Self;
  FQuery.SQL.Clear;
end;

function TNEZZServicesCadastrar.Tabela(AValue: string): iNEZZServicesCadastrar;
begin
  Result := Self;
  FTabela := AValue;
  MontarSQL;
end;

function TNEZZServicesCadastrar.TemRegistros: Boolean;
begin
  Result := FQuery.RecordCount > 0;
end;

end.
