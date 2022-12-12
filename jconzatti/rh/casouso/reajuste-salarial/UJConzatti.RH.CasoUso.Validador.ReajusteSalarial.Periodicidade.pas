unit UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Periodicidade;

interface

uses
   System.SysUtils,
   System.DateUtils,
   UJConzatti.RH.Entidade.Funcionario,
   UJConzatti.RH.Util.ValidacaoException,
   UJConzatti.RH.CasoUso.Validador.ReajusteSalarial;

type
   TCasoUsoValidadorReajusteSalarialPeriodicidade = class(TCasoUsoValidadorReajusteSalarial)
   public
      procedure Validar(aFuncionario : TEntidadeFuncionario; aAumento : Currency); override;
   end;

implementation

{ TCasoUsoValidadorReajusteSalarialPeriodicidade }

procedure TCasoUsoValidadorReajusteSalarialPeriodicidade.Validar(aFuncionario: TEntidadeFuncionario; aAumento: Currency);
var QtMesDesdeUltimoReajuste : Integer;
begin
   QtMesDesdeUltimoReajuste := MonthsBetween(aFuncionario.DataUltimoReajuste, Now);
   if QtMesDesdeUltimoReajuste < 6 then
      raise TUtilValidacaoException.Create('Intervalo entre resjuste de salários deve ser de no mínimo 6 meses!');
end;

end.
