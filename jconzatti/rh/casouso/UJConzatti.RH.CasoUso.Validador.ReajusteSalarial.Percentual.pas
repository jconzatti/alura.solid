unit UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Percentual;

interface

uses
   UJConzatti.RH.Entidade.Funcionario,
   UJConzatti.RH.Util.ValidacaoException,
   UJConzatti.RH.CasoUso.Validador.ReajusteSalarial;

type
   TCasoUsoValidadorReajusteSalarialPercentual = class(TCasoUsoValidadorReajusteSalarial)
   public
      procedure Validar(aFuncionario : TEntidadeFuncionario; aAumento : Currency); override;
   end;

implementation

{ TCasoUsoValidadorReajusteSalarialPercentual }

procedure TCasoUsoValidadorReajusteSalarialPercentual.Validar(aFuncionario: TEntidadeFuncionario; aAumento: Currency);
var PercentualReajusteSalarial : Double;
begin
   PercentualReajusteSalarial := aAumento/aFuncionario.Salario;
   if PercentualReajusteSalarial > 0.4 then
      raise TUtilValidacaoException.Create('Reajuste não pode ser superior a 40% do salário!');
end;

end.
