program rh.linha.comando;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UJConzatti.RH.Entidade.Cargo in '..\entidade\UJConzatti.RH.Entidade.Cargo.pas',
  UJConzatti.RH.Entidade.Funcionario in '..\entidade\UJConzatti.RH.Entidade.Funcionario.pas',
  UJConzatti.RH.Util.ValidacaoException in '..\util\UJConzatti.RH.Util.ValidacaoException.pas',
  UJConzatti.RH.CasoUso.Reajustador.Salario in '..\casouso\reajuste-salarial\UJConzatti.RH.CasoUso.Reajustador.Salario.pas',
  UJConzatti.RH.CasoUso.Validador.ReajusteSalarial in '..\casouso\reajuste-salarial\UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.pas',
  UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Percentual in '..\casouso\reajuste-salarial\UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Percentual.pas',
  UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Periodicidade in '..\casouso\reajuste-salarial\UJConzatti.RH.CasoUso.Validador.ReajusteSalarial.Periodicidade.pas',
  UJConzatti.RH.CasoUso.Promovedor.Cargo in '..\casouso\promocao-cargo\UJConzatti.RH.CasoUso.Promovedor.Cargo.pas',
  UJConzatti.RH.Entidade.Terceirizado in '..\entidade\UJConzatti.RH.Entidade.Terceirizado.pas',
  UJConzatti.RH.Entidade.DadoPessoal in '..\entidade\UJConzatti.RH.Entidade.DadoPessoal.pas';

begin
   try
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;
end.
