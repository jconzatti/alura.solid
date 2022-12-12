unit UJConzatti.RH.CasoUso.ReajusteTributavel;

interface

uses
   UJConzatti.RH.CasoUso.Reajuste;

type
   TCasoUsoReajusteTributavel = class abstract(TCasoUsoReajuste)
   public
      function ObterValorImpostoDeRenda: Currency; virtual; abstract;
   end;

implementation

end.
