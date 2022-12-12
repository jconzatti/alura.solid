unit UJConzatti.RH.CasoUso.ReajusteTributavel.Promocao;

interface

uses
   System.SysUtils,
   UJConzatti.RH.CasoUso.ReajusteTributavel;

type
   TCasoUsoReajustePromocao = class(TCasoUsoReajusteTributavel)
   private
      FValor : Currency;
      FData : TDateTime;
   public
      constructor Create(aValor : Currency); reintroduce;
      function ObterValor: Currency; override;
      function ObterData: TDateTime; override;
      function ObterValorImpostoDeRenda: Currency; override;
   end;

implementation

{ TCasoUsoReajustePromocao }

constructor TCasoUsoReajustePromocao.Create(aValor: Currency);
begin
   FValor := aValor;
   FData  := Now;
end;

function TCasoUsoReajustePromocao.ObterData: TDateTime;
begin
   Result := FData;
end;

function TCasoUsoReajustePromocao.ObterValor: Currency;
begin
   Result := FValor;
end;

function TCasoUsoReajustePromocao.ObterValorImpostoDeRenda: Currency;
begin
   Result := FValor*0.1;
end;

end.
