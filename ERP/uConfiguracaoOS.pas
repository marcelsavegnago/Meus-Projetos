unit uConfiguracaoOS;

interface
    uses SysUtils, Classes, Windows, MinhasClasses,
         uGerenteConfiguracao;
    type
      TCOnfiguracaoOS =class(TConfiguracao)
        Function GetRegistroConfiguracao(Cfg: TTipoConfiguracao): IRegistroConfiguracao;override;
      end;
var
  COnfiguracaoOS: TCOnfiguracaoOS;
implementation

{ TCOnfiguracaoOS }

function TCOnfiguracaoOS.GetRegistroConfiguracao(
  Cfg: TTipoConfiguracao): IRegistroConfiguracao;
begin
  Result := TRegistroConfiguracao.Create;
  Result.Secao :='OS';
  Result.ValorPadrao := -1;
  Result.TipoCampo := tcString;
  case Cfg of
    tpcERPStatusOSAberta:
    begin
      Result.NomeConfiguracao :='StatusOSAberta';
      Result.Descricao := 'Status das O.S. Abertas'
    end ;
    tpcERPStatusOSFinalizada:
    begin
      Result.NomeConfiguracao :='StatusOSFinalizada';
      Result.Descricao := 'Status das O.S. Finalizada'
    end ;
    tpcERPStatusOSExecucao:
    begin
      Result.NomeConfiguracao :='StatusOSExecucao';
      Result.Descricao := 'Status das O.S. Execucao'
    end ;
    tpcERPStatusOSFaturada:
     begin
      Result.NomeConfiguracao :='StatusOSFaturada';
      Result.Descricao := 'Status das O.S. Faturada'
    end ;
    tpcERPOperacaoFaturarOS:
    begin
      Result.NomeConfiguracao :='OperacaoFaturarOS';
      Result.Descricao := 'Opera��o para faturar O.S.'
    end ;

  end;
end;

initialization
  COnfiguracaoOS := TCOnfiguracaoOS.Create;

end.