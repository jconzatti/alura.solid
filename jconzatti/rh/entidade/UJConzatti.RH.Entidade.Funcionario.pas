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
      procedure ReajustarSalario(aAumento: Currency);
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
   FSalario   := FSalario;
end;

procedure TEntidadeFuncionario.ReajustarSalario(aAumento : Currency);
var PercentualReajuste : Double;
begin
   PercentualReajuste := aAumento/FSalario;
   if PercentualReajuste > 0.4 then
      raise TUtilValidacaoException.Create('Reajuste não pode ser superior a 40% do salário!');
	FSalario := FSalario + aAumento;
	FDataUltimoReajuste := Now;
end;

end.
