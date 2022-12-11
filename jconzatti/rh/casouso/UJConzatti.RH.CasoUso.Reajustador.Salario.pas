unit UJConzatti.RH.CasoUso.Reajustador.Salario;

interface

uses
   System.SysUtils,
   System.DateUtils,
   System.Generics.Collections,
   UJConzatti.RH.Entidade.Funcionario,
   UJConzatti.RH.CasoUso.Validador.ReajusteSalarial;

type
   TCasoUsoReajustadorSalario = class
   private
      FListaValidadorReajusteSalarial : TList<TCasoUsoValidadorReajusteSalarial>;
   public
      constructor Create(aListaValidadorReajusteSalarial : TList<TCasoUsoValidadorReajusteSalarial>); reintroduce;
      procedure ReajustarSalarioDoFuncionario(aFuncionario : TEntidadeFuncionario; aAumento : Currency);
   end;

implementation

{ TCasoUsoReajustadorSalario }

constructor TCasoUsoReajustadorSalario.Create(
  aListaValidadorReajusteSalarial: TList<TCasoUsoValidadorReajusteSalarial>);
begin
   FListaValidadorReajusteSalarial := aListaValidadorReajusteSalarial;
end;

procedure TCasoUsoReajustadorSalario.ReajustarSalarioDoFuncionario(aFuncionario: TEntidadeFuncionario; aAumento: Currency);
var ValorSalarioReajustado : Currency;
    aValidadorReajusteSalarial: TCasoUsoValidadorReajusteSalarial;
begin
   for aValidadorReajusteSalarial in FListaValidadorReajusteSalarial do
      aValidadorReajusteSalarial.Validar(aFuncionario, aAumento);

	ValorSalarioReajustado := aFuncionario.Salario + aAumento;
   aFuncionario.AtualizarSalario(ValorSalarioReajustado);
end;

end.
