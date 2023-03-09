# language: pt

Funcionalidade: Login - Validar login no aplicativo
  Como usuário do sistema
  Quero realizar o login na plataforma
  Para prosseguir com a navegação do meu interesse
  
  @login
  Esquema do Cenário: Validar acesso a área logada do aplicativo
    Dado acessar a página inicial do app
    Quando realizar o login no sistema '<tipo>'
    Então validar login realizado com sucesso '<tipo>'

    Exemplos:
      | tipo      |
      | positivo  |
      | negativo  |
