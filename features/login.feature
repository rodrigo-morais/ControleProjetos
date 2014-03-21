# language: pt

Funcionalidade: Login de usuário
  Para poder utilizar o sistema
  Como usuário
  Quero poder executar o login

  Cenário: Logar com perfil Administrador com sucesso
    Usuário com perfil de Administrador informa seu e-mail e senha corretos e é direcionado para a página principal do sistema.

    Dado que estou na página de login do sistema
    Quando informo o e-mail "morales@mail.com", a senha "?T2014" e clico no botão "Fazer Login" do usuário com perfil de "administrador"
    Entao sou redirecionado para a página de projetos do sistema como usuário logado
    E a primeira opção do menu é "Clientes"

  Cenário: Erro ao logar com e-mail incorreto
    Usuário com perfil de Administrador informa seu e-mail e senha incorretos e retorna para a página de login com a mensagem de erro.

    Dado que estou na página de login do sistema
    Quando informo o e-mail "email@errado.com", a senha "?T2014" e clico no botão "Fazer Login" do usuário com perfil de "administrador"
    Entao retorno para a página de login do sistema
    E é exibida a mensagem de erro "E-mail ou senha inválidos"

  Cenário: Deslogar usuário com perfil Administrador com sucesso
    Usuário com perfil de Administrador informa seu e-mail e senha corretos e é direcionado para a página principal do sistema e clica no link Logout.

    Dado que estou na página de login do sistema
    Quando informo o e-mail "morales@mail.com", a senha "?T2014" e clico no botão "Fazer Login" do usuário com perfil de "administrador"
    E sou redirecionado para a página de projetos do sistema como usuário logado
    E a primeira opção do menu é "Clientes"
    E clico no link "Logout"
    Entao retorno para a página de login do sistema
    E a menssagem "Logout efetuado com sucesso!" é exibida

  Cenário: Logar com perfil Cliente com sucesso
    Usuário com perfil de Cliente informa seu e-mail e senha corretos e é direcionado para a página principal do sistema.

    Dado que estou na página de login do sistema
    Quando informo o e-mail "morales@mail.com", a senha "?T2014" e clico no botão "Fazer Login" do usuário com perfil de "cliente"
    Entao sou redirecionado para a página de projetos do sistema como usuário logado
    E a primeira opção do menu é "Usuários"

  Cenário: Deslogar usuário com perfil Cliente com sucesso
    Usuário com perfil de Cliente informa seu e-mail e senha corretos e é direcionado para a página principal do sistema e clica no link Logout.

    Dado que estou na página de login do sistema
    Quando informo o e-mail "morales@mail.com", a senha "?T2014" e clico no botão "Fazer Login" do usuário com perfil de "cliente"
    E sou redirecionado para a página de projetos do sistema como usuário logado
    E a primeira opção do menu é "Usuários"
    E clico no link "Logout"
    Entao retorno para a página de login do sistema
    E a menssagem "Logout efetuado com sucesso!" é exibida