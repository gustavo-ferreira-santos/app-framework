## Sobre o projeto

O projeto foi construído utilizando as seguintes tecnologias:

- Ruby, na versão: 2.7.0;
- Cucumber para escrita dos cenários de teste em formato BDD;
- Appium para correta integração do projeto e execução dos testes com aplicativos ;
- Browserstack para realizar a execução dos testes em dispositivos reais dentro de uma device farm.

## Configurações iniciais do projeto

- Para execução local é necessário instalar previamente o Appium e o Ruby, para execução na device farm não é necessário ter o Appium instalado. Para alternar entre a execução local ou na device farm basta setar o respectivo caps no arquivo env.rb (opts_android_bs para a device farm e opts_android_local para execução local)

- Após clonar o projeto, acessar o mesmo via terminal e instalar as dependências do mesmo via linha de comando, basta digitar 'bundle install';

## Executando os testes

cucumber                          # executar todos os testes
cucumber feature/<nomefeature>    # executa todos os cenários de uma feature especifica.
cucumber -t @tag               # executa o cenário com a tag especificada.

## Relatório de teste

Para gerar o relatório do teste basta utilizar o comando do próprio cucumber:
cucumber -f pretty -f html -o report.html
