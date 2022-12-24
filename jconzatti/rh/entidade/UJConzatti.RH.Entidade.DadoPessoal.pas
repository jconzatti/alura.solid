unit UJConzatti.RH.Entidade.DadoPessoal;

interface

uses
   UJConzatti.RH.Entidade.Cargo;

type
   TEntidadeDadoPessoal = class
   private
      FNome: String;
      FCPF: String;
      FCargo: TEntidadeCargo;
      FSalario: Currency;
   public
      constructor Create(aNome, aCPF: String; aCargo: TEntidadeCargo; aSalario: Currency);
      property Nome: String read FNome write FNome;
      property CPF: String read FCPF write FCPF;
      property Cargo: TEntidadeCargo read FCargo write FCargo;
      property Salario: Currency read FSalario write FSalario;
   end;

implementation

{ TEntidadeDadoPessoal }

constructor TEntidadeDadoPessoal.Create(aNome, aCPF: String; aCargo: TEntidadeCargo; aSalario: Currency);
begin
   FNome    := aNome;
   FCPF     := aCPF;
   FCargo   := aCargo;
   FSalario := aSalario;
end;

end.
