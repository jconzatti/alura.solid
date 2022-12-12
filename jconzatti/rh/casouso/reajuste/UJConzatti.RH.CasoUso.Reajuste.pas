unit UJConzatti.RH.CasoUso.Reajuste;

interface

type
   TCasoUsoReajuste = class abstract
   public
      function ObterValor: Currency; virtual; abstract;
      function ObterData: TDateTime; virtual; abstract;
   end;

implementation

end.
