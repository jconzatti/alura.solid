unit UJConzatti.RH.Entidade.Funcionario;

interface

uses
   System.SysUtils,
   UJConzatti.RH.Entidade.TipoCargo,
   UJConzatti.RH.Util.ValidacaoException;

type
   TEntidadeFuncionario = class
   private
      FNome: String;
      FCPF: String;
      FTipoCargo: TEntidadeTipoCargo;
      FSalario: Currency;
      FDataUltimoReajuste: TDateTime;
   public
      constructor Create(aNome, aCPF: String; aTipoCargo: TEntidadeTipoCargo; aSalario: Currency);
      procedure AtualizarSalario(aNovoSalario: Currency);
      property Nome: String read FNome write FNome;
      property CPF: String read FCPF write FCPF;
      property TipoCargo: TEntidadeTipoCargo read FTipoCargo write FTipoCargo;
      property Salario: Currency read FSalario write FSalario;
      property DataUltimoReajuste: TDateTime read FDataUltimoReajuste write FDataUltimoReajuste;
   end;

implementation

{ TEntidadeFuncionario }

constructor TEntidadeFuncionario.Create(aNome, aCPF: String;
  aTipoCargo: TEntidadeTipoCargo; aSalario: Currency);
begin
   FNome      := aNome;
   FCPF       := aCPF;
   FTipoCargo := aTipoCargo;
   FSalario   := aSalario;
end;

procedure TEntidadeFuncionario.AtualizarSalario(aNovoSalario : Currency);
begin
	FSalario            := aNovoSalario;
	FDataUltimoReajuste := Now;
end;

end.
