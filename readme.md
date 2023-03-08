## Executando os testes

  cucumber                          # executar todos os testes
  cucumber feature/<nomefeature>    # executa todos os cenários de uma feature especifica.
  cucumber --tag @tag               # executa o cenário com a tag especificada.

## Relatório de teste

  Para gerar o relatório do teste basta utilizar o comando do próprio cucumber:
  cucumber -f pretty -f html -o report.html
