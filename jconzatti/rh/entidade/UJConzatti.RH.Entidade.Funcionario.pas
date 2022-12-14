unit UJConzatti.RH.Entidade.Funcionario;

interface

uses
   System.SysUtils,
   UJConzatti.RH.Entidade.Cargo,
   UJConzatti.RH.Entidade.DadoPessoal,
   UJConzatti.RH.Util.ValidacaoException;

type
   TEntidadeFuncionario = class
   private
      FDadoPessoal : TEntidadeDadoPessoal;
      FDataUltimoReajuste: TDateTime;
      function GetCargo: TEntidadeCargo;
      function GetCPF: String;
      function GetNome: String;
      function GetSalario: Currency;
      procedure SetCargo(const Value: TEntidadeCargo);
      procedure SetCPF(const Value: String);
      procedure SetNome(const Value: String);
      procedure SetSalario(const Value: Currency);
   public
      constructor Create(aNome, aCPF: String; aCargo: TEntidadeCargo; aSalario: Currency);
      destructor Destroy; override;
      procedure AtualizarSalario(aNovoSalario: Currency);
      procedure Promover(aCargoNovo : TEntidadeCargo);
      property Nome: String read GetNome write SetNome;
      property CPF: String read GetCPF write SetCPF;
      property Cargo: TEntidadeCargo read GetCargo write SetCargo;
      property Salario: Currency read GetSalario write SetSalario;
      property DataUltimoReajuste: TDateTime read FDataUltimoReajuste write FDataUltimoReajuste;
   end;

implementation

{ TEntidadeFuncionario }

constructor TEntidadeFuncionario.Create(aNome, aCPF: String; aCargo: TEntidadeCargo; aSalario: Currency);
begin
   FDadoPessoal := TEntidadeDadoPessoal.Create(aNome,aCPF,aCargo,aSalario);
end;

destructor TEntidadeFuncionario.Destroy;
begin
   FDadoPessoal.Destroy;
   inherited;
end;

procedure TEntidadeFuncionario.AtualizarSalario(aNovoSalario : Currency);
begin
	FDadoPessoal.Salario := aNovoSalario;
	FDataUltimoReajuste  := Now;
end;

procedure TEntidadeFuncionario.Promover(aCargoNovo: TEntidadeCargo);
begin
   FDadoPessoal.Cargo := aCargoNovo;
end;

function TEntidadeFuncionario.GetCargo: TEntidadeCargo;
begin
   Result := FDadoPessoal.Cargo;
end;

function TEntidadeFuncionario.GetCPF: String;
begin
   Result := FDadoPessoal.CPF;
end;

function TEntidadeFuncionario.GetNome: String;
begin
   Result := FDadoPessoal.Nome;
end;

function TEntidadeFuncionario.GetSalario: Currency;
begin
   Result := FDadoPessoal.Salario;
end;

procedure TEntidadeFuncionario.SetCargo(const Value: TEntidadeCargo);
begin
   FDadoPessoal.Cargo := Value;
end;

procedure TEntidadeFuncionario.SetCPF(const Value: String);
begin
   FDadoPessoal.CPF := Value;
end;

procedure TEntidadeFuncionario.SetNome(const Value: String);
begin
   FDadoPessoal.Nome := Value;
end;

procedure TEntidadeFuncionario.SetSalario(const Value: Currency);
begin
   FDadoPessoal.Salario := Value;
end;

end.
