# encoding: utf-8
# language: pt

Funcionalidade: Lista de usuários
  Para poder utilizar o sistema
  Como usuário
  Quero poder listar os usuários por cliente cadastrados no sistema

  Cenário: Navegar para a página de usuários para um cliente específico
    Usuário com perfil de administrador navega para a página de clientes clica no link de usuários para um cliente específico e é redirecionado para a página de usuários.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    Entao sou direcionado para a página de usuários

  Cenário: Navegar para a página de usuários para um cliente específico
    Usuário com perfil de administrador navega para a página de clientes clica no link de usuários para um cliente específico. É exibido o título da página com o nome do cliente.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    Entao sou direcionado para a página de usuários
    E é exibido o título "Usuários do cliente Cliente2"

  Cenário: Navegar para a página de usuários para um cliente específico
    Usuário com perfil de administrador navega para a página de clientes clica no link de usuários para um cliente específico. É exibida a lista de usuários para o cliente selecionado.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    Entao sou direcionado para a página de usuários
    E existem 10 usuários listados

  Cenário: Navegar para a página de usuários para um cliente específico
    Usuário com perfil de administrador navega para a página de clientes clica no link de usuários para um cliente específico e verifica se existe link para excluir.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    Entao sou direcionado para a página de usuários
    E para cada usuário existe um link "Excluir"

  @javascript
  Cenário: Navegar para a página de usuários, clicar no link excluir e cancelar exclusão
    Usuário com perfil de administrador navega para a página de usuários, clica no link "Excluir" de um usuário e cancela a exclusão.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E sou direcionado para a página de usuários
    E clico no link "Excluir" do usuário "Novo Usuario 3"
    E clico no botão "Cancelar" da caixa de confirmação de exclusão
    Entao o usuário "Novo Usuario 3" continua na lista de usuários

  @javascript
  Cenário: Navegar para a página de usuários, clicar no link excluir e confirmar exclusão
    Usuário com perfil de administrador navega para a página de usuários, clica no link "Excluir" de um usuário e confirma a exclusão.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E sou direcionado para a página de usuários
    E clico no link "Excluir" do usuário "Novo Usuario 3"
    E clico no botão "Ok" da caixa de confirmação de exclusão
    Então o usuário "Novo Usuario 3" não existe na lista de usuários