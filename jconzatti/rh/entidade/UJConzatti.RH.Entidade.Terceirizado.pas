unit UJConzatti.RH.Entidade.Terceirizado;

interface

uses
   UJConzatti.RH.Entidade.DadoPessoal,
   UJConzatti.RH.Entidade.Cargo;

type
   TEntidadeTerceirizado = class
   private
      FEmpresa: String;
      FDadoPessoal : TEntidadeDadoPessoal;
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
      property Nome: String read GetNome write SetNome;
      property CPF: String read GetCPF write SetCPF;
      property Cargo: TEntidadeCargo read GetCargo write SetCargo;
      property Salario: Currency read GetSalario write SetSalario;
      property Empresa: String read FEmpresa write FEmpresa;
   end;

implementation

{ TEntidadeTerceirizado }

constructor TEntidadeTerceirizado.Create(aNome, aCPF: String; aCargo: TEntidadeCargo; aSalario: Currency);
begin
   FDadoPessoal := TEntidadeDadoPessoal.Create(aNome,aCPF,aCargo,aSalario);
end;

destructor TEntidadeTerceirizado.Destroy;
begin
   FDadoPessoal.Destroy;
   inherited;
end;

function TEntidadeTerceirizado.GetCargo: TEntidadeCargo;
begin
   Result := FDadoPessoal.Cargo;
end;

function TEntidadeTerceirizado.GetCPF: String;
begin
   Result := FDadoPessoal.CPF;
end;

function TEntidadeTerceirizado.GetNome: String;
begin
   Result := FDadoPessoal.Nome;
end;

function TEntidadeTerceirizado.GetSalario: Currency;
begin
   Result := FDadoPessoal.Salario;
end;

procedure TEntidadeTerceirizado.SetCargo(const Value: TEntidadeCargo);
begin
   FDadoPessoal.Cargo := Value;
end;

procedure TEntidadeTerceirizado.SetCPF(const Value: String);
begin
   FDadoPessoal.CPF := Value;
end;

procedure TEntidadeTerceirizado.SetNome(const Value: String);
begin
   FDadoPessoal.Nome := Value;
end;

procedure TEntidadeTerceirizado.SetSalario(const Value: Currency);
begin
   FDadoPessoal.Salario := Value;
end;

end.
