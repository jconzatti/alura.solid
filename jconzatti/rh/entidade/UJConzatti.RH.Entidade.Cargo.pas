unit UJConzatti.RH.Entidade.Cargo;

interface

type
   TEntidadeCargo = (
      tcAssitente = 0,
      tcAnalista = 1,
      tcEspecialista = 2,
      tcGerente = 3);

   TEntidadeCargoHelper = record helper for TEntidadeCargo
   public
      function ObterProximo: TEntidadeCargo;
   end;


implementation

{ TEntidadeCargoHelper }

function TEntidadeCargoHelper.ObterProximo: TEntidadeCargo;
begin
   Result := Self;
   if Result <> tcGerente then
      Result := TEntidadeCargo(Ord(Result) + 1);
end;

end.
