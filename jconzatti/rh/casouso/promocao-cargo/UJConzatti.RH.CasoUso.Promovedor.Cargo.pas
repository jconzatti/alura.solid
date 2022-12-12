unit UJConzatti.RH.CasoUso.Promovedor.Cargo;

interface

uses
   UJConzatti.RH.Entidade.Funcionario,
   UJConzatti.RH.Entidade.Cargo,
   UJConzatti.RH.Util.ValidacaoException;

type
   TCasoUsoPromovedorCargo = class
   public
      procedure Promover(aFuncionario : TEntidadeFuncionario; IndMetaBatida : Boolean);
   end;

implementation

{ TCasoUsoPromovedorCargo }

procedure TCasoUsoPromovedorCargo.Promover(aFuncionario: TEntidadeFuncionario; IndMetaBatida: Boolean);
var CargoAtual : TEntidadeCargo;
begin
   CargoAtual := aFuncionario.Cargo;
   if CargoAtual = tcGerente then
      raise TUtilValidacaoException.Create('Gerentes não podem ser promovidos!');

   if not IndMetaBatida then
      raise TUtilValidacaoException.Create('Funcionário não bateu a meta!');

   aFuncionario.Promover(CargoAtual.ObterProximo);
end;

end.
