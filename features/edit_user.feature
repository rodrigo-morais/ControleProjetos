# language: pt

Funcionalidade: Editar dados de usuário cadastrado
  Para poder utilizar o sistema
  Como usuário
  Quero poder editar os dados de um usuário cadastrado no sistema

  Cenário: Navegar para a página de edição dos dados do usuário de um cliente em específico
    Usuário com perfil de administrador navega para a página edição de dados do usuário de um cliente em específico.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 1"
    Entao sou direcionado para a página de edição de usuário

  Cenário: Navegar para a página de edição dos dados do usuário e verificar se os campos foram preenchidos
    Usuário com perfil de administrador navega para a página edição de dados do usuário e verifica preenchimento dos campos.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 1"
    Entao sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 1"
    E campo "E-mail" esta preenchido com o valor "usuario1@usuario.com"

  Cenário: Editar o nome do usuário e confirmar a alteração
    Usuário com perfil de administrador navega para a página edição de dados do usuário e edita o nome do usuário.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 1"
    E sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 1"
    E campo "E-mail" esta preenchido com o valor "usuario1@usuario.com"
    E altero "Nome" para o valor "Novo Usuário 1 ALTERADO"
    E clico no botão "Salvar"
    Entao sou direcionado para a página de usuários do sistema
    E encontro o usuário com o novo nome "Novo Usuário 1 ALTERADO"

  Cenário: Editar o e-mail do usuário e confirmar a alteração
    Usuário com perfil de administrador navega para a página edição de dados do usuário e edita o e-mail do usuário.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 1"
    E sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 1"
    E campo "E-mail" esta preenchido com o valor "usuario1@usuario.com"
    E altero "E-mail" para o valor "usuario1Alterado@usuario.com"
    E clico no botão "Salvar"
    Entao sou direcionado para a página de usuários do sistema
    E clico no link "Editar" do usuário "Novo Usuario 1"
    E sou direcionado para a página de edição de usuário
    E campo "E-mail" esta preenchido com o valor "usuario1Alterado@usuario.com"

  Cenário: Editar os dados do usuário e confirmar a alteração
    Usuário com perfil de administrador navega para a página edição de dados do usuário e edita o nome e e-mail do usuário.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 1"
    E sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 1"
    E campo "E-mail" esta preenchido com o valor "usuario1@usuario.com"
    E altero "Nome" para o valor "Novo Usuario 1 ALTERADO"
    E altero "E-mail" para o valor "usuario1Alterado@usuario.com"
    E clico no botão "Salvar"
    Entao sou direcionado para a página de usuários do sistema
    E clico no link "Editar" do usuário "Novo Usuario 1"
    E sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 1 ALTERADO"
    E campo "E-mail" esta preenchido com o valor "usuario1Alterado@usuario.com"

# Perfil Cliente

  Cenário: Navegar para a página de edição dos dados de um usuário para o cliente do usuário logado
    Usuário com perfil de cliente navega para a página edição de dados de um usuário.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 2"
    Entao sou direcionado para a página de edição de usuário

  Cenário: Navegar para a página de edição dos dados de um usuário e verificar se os campos foram preenchidos
    Usuário com perfil de cliente navega para a página edição de dados do usuário e verifica preenchimento dos campos.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 2"
    Entao sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 2"
    E campo "E-mail" esta preenchido com o valor "usuario2@usuario.com"

  Cenário: Editar o nome do usuário e confirmar a alteração
    Usuário com perfil de cliente navega para a página edição de dados do usuário e edita o nome do usuário.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 2"
    E sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 2"
    E campo "E-mail" esta preenchido com o valor "usuario2@usuario.com"
    E altero "Nome" para o valor "Novo Usuário 2 ALTERADO"
    E clico no botão "Salvar"
    Entao sou direcionado para a página de usuários do sistema
    E encontro o usuário com o novo nome "Novo Usuário 2 ALTERADO"

  Cenário: Editar os dados do usuário e confirmar a alteração
    Usuário com perfil de administrador navega para a página edição de dados do usuário e edita o nome e e-mail do usuário.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Editar" do usuário "Novo Usuario 2"
    E sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 2"
    E campo "E-mail" esta preenchido com o valor "usuario2@usuario.com"
    E altero "Nome" para o valor "Novo Usuario 2 ALTERADO"
    E altero "E-mail" para o valor "usuario2Alterado@usuario.com"
    E clico no botão "Salvar"
    Entao sou direcionado para a página de usuários do sistema
    E clico no link "Editar" do usuário "Novo Usuario 2"
    E sou direcionado para a página de edição de usuário
    E campo "Nome" esta preenchido com o valor "Novo Usuario 2 ALTERADO"
    E campo "E-mail" esta preenchido com o valor "usuario2Alterado@usuario.com"