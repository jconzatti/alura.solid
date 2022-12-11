unit UJConzatti.RH.CasoUso.Reajustor.Salario;

interface

uses
  UJConzatti.RH.Entidade.Funcionario,
  UJConzatti.RH.Util.ValidacaoException;

type
   TCasoUsoReajustadorSalario = class
   public
      procedure ReajustarSalarioDoFuncionario(aFuncionario : TEntidadeFuncionario; aAumento : Currency);
   end;

implementation

{ TCasoUsoReajustadorSalario }

procedure TCasoUsoReajustadorSalario.ReajustarSalarioDoFuncionario(aFuncionario: TEntidadeFuncionario; aAumento: Currency);
var PercentualReajusteSalarial : Double;
    ValorSalarioReajustado, ValorSalarioAtual : Currency;
begin
   ValorSalarioAtual          := aFuncionario.Salario;
   PercentualReajusteSalarial := aAumento/ValorSalarioAtual;
   if PercentualReajusteSalarial > 0.4 then
      raise TUtilValidacaoException.Create('Reajuste não pode ser superior a 40% do salário!');
	ValorSalarioReajustado := ValorSalarioAtual + aAumento;
   aFuncionario.AtualizarSalario(ValorSalarioReajustado);
end;

end.
