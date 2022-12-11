program rh.linha.comando;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UJConzatti.RH.Entidade.TipoCargo in '..\entidade\UJConzatti.RH.Entidade.TipoCargo.pas',
  UJConzatti.RH.Entidade.Funcionario in '..\entidade\UJConzatti.RH.Entidade.Funcionario.pas',
  UJConzatti.RH.Util.ValidacaoException in '..\util\UJConzatti.RH.Util.ValidacaoException.pas',
  UJConzatti.RH.CasoUso.Reajustor.Salario in '..\casouso\UJConzatti.RH.CasoUso.Reajustor.Salario.pas';

begin
   try
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;
end.
