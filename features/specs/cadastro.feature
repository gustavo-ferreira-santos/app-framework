# language: pt

Funcionalidade: Cadastro - Validar Cadastro no aplicativo
  Como usuário do sistema
  Quero realizar o Cadastro na plataforma
  Para me tornar um usuário cadastrado na plataforma
  
  @cadastro
  Esquema do Cenário: Validar cadastro aplicativo
    Dado acessar a página inicial do app
    Quando clicar no botão de cadastro no sistema
    E preencher as informações de cadastro '<tipo>'
    Então validar cadastro realizado com sucesso '<tipo>'

    Exemplos:
      | tipo      |
      | positivo  |
      | negativo  |
