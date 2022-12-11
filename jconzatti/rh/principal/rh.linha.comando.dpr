program rh.linha.comando;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UJConzatti.RH.Entidade.TipoCargo in '..\entidade\UJConzatti.RH.Entidade.TipoCargo.pas',
  UJConzatti.RH.Entidade.Funcionario in '..\entidade\UJConzatti.RH.Entidade.Funcionario.pas',
  UJConzatti.RH.Util.ValidacaoException in '..\util\UJConzatti.RH.Util.ValidacaoException.pas',
  UJConzatti.RH.CasoUso.Reajustador.Salario in '..\casouso\UJConzatti.RH.CasoUso.Reajustador.Salario.pas',
  UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Percentual in '..\casouso\UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Percentual.pas',
  UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Periodicidade in '..\casouso\UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Periodicidade.pas',
  UJConzatti.RH.CasoUso.Validador.ReajusteSalarial in '..\casouso\UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.pas';

begin
   try
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;
end.
