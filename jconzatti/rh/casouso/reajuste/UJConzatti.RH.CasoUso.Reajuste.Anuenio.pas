unit UJConzatti.RH.CasoUso.Reajuste.Anuenio;

interface

uses
   System.SysUtils,
   UJConzatti.RH.CasoUso.Reajuste;

type
   TCasoUsoReajusteAnuenio = class(TCasoUsoReajuste)
   private
      FValor : Currency;
      FData : TDateTime;
   public
      constructor Create(aValor : Currency); reintroduce;
      function ObterValor: Currency; override;
      function ObterData: TDateTime; override;
   end;

implementation

{ TCasoUsoReajusteAnuenio }

constructor TCasoUsoReajusteAnuenio.Create(aValor: Currency);
begin
   FValor := aValor;
   FData  := Now;
end;

function TCasoUsoReajusteAnuenio.ObterData: TDateTime;
begin
   Result := FData;
end;

function TCasoUsoReajusteAnuenio.ObterValor: Currency;
begin
   Result := FValor;
end;

end.
