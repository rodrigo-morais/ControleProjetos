# language: pt

Funcionalidade: Login de usuário
  Para poder utilizar o sistema
  Como usuário
  Quero poder executar o login

  Cenário: Logar com perfil Administrador com sucesso
    Usuário informa seu e-mail e senha corretos e é direcionado para a página principal do sistema.

    Dado que estou na página de login do sistema
    Quando informo o e-mail "morales@mail.com", a senha "?T2014" e clico no botão "Fazer Login"
    Entao sou redirecionado para a página de projetos do sistema como usuário logado

  Cenário: Erro ao logar com e-mail incorreto
    Usuário informa seu e-mail e senha incorretos e retorna para a página de login com a mensagem de erro.

    Dado que estou na página de login do sistema
    Quando informo o e-mail "email@errado.com", a senha "?T2014" e clico no botão "Fazer Login"
    Entao retorno para a página de login do sistema
    E é exibida a mensagem de erro "E-mail ou senha inválidos"