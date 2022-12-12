unit UJConzatti.RH.CasoUso.Validador.ReajusteSalarial;

interface

uses
   UJConzatti.RH.Entidade.Funcionario;

type
   TCasoUsoValidadorReajusteSalarial =  class abstract
   public
      procedure Validar(aFuncionario : TEntidadeFuncionario; aAumento : Currency); virtual; abstract;
   end;

implementation

end.
