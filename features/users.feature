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

# Perfil Cliente

  Cenário: Navegar para a página de usuários para o cliente usuário logado
    Usuário com perfil de cliente navega de usuários para o cliente do usuário logado.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    Entao sou direcionado para a página de usuários

  Cenário: Navegar para a página de usuários para o cliente usuário logado
    Usuário com perfil de cliente navega de usuários para o cliente do usuário logado. É exibido o título da página com o nome do cliente.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    Entao sou direcionado para a página de usuários
    E é exibido o título "Usuários do cliente Cliente2"

  Cenário: Navegar para a página de usuários para o cliente usuário logado
    Usuário com perfil de cliente navega de usuários para o cliente do usuário logado. É exibida a lista de usuários para o cliente selecionado.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    Entao sou direcionado para a página de usuários
    E existem 10 usuários listados

  Cenário: Navegar para a página de usuários para o cliente usuário logado
    Usuário com perfil de cliente navega de usuários para o cliente do usuário logado e verifica se existe link para excluir.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    Entao sou direcionado para a página de usuários
    E para cada usuário existe um link "Excluir"

  @javascript
  Cenário: Navegar para a página de usuários, clicar no link excluir e cancelar exclusão
    Usuário com perfil de cliente navega para a página de usuários, clica no link "Excluir" de um usuário e cancela a exclusão.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Excluir" do usuário "Novo Usuario 3"
    E clico no botão "Cancelar" da caixa de confirmação de exclusão
    Entao o usuário "Novo Usuario 3" continua na lista de usuários

  @javascript
  Cenário: Navegar para a página de usuários, clicar no link excluir e confirmar exclusão
    Usuário com perfil de cliente navega para a página de usuários, clica no link "Excluir" de um usuário e confirma a exclusão.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Excluir" do usuário "Novo Usuario 3"
    E clico no botão "Ok" da caixa de confirmação de exclusão
    Então o usuário "Novo Usuario 3" não existe na lista de usuários


#paginação


  Cenário: Navegar para a página de usuários para um cliente específico e exibir 10 usuários
    Usuário com perfil de administrador navega para a página de clientes clica no link de usuários para um cliente específico. É exibida a lista de usuários com dez usuário quando existem doze usuários cadastrados para o cliente selecionado.

    Dado que estou logado com usuário com perfil de "administrador"
    E existem clientes cadastrados, cada um com 12 usuários
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    Entao sou direcionado para a página de usuários
    E existem 10 usuários listados

  Cenário: Listar duas páginas quando existem doze usuários cadastrados para um cliente em específico
    Usuário com perfil de administrador lista duas páginas por existerem doze clientes cadastros no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E existem clientes cadastrados, cada um com 12 usuários
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    Entao sou direcionado para a página de usuários
    E existem duas páginas para listar os usuários

  Cenário: Listar dois usuários na segunda página quando existem doze clientes cadastrados para um cliente específico
    Usuário com perfil de administrador lista dois clientes na página dois por existerem doze clientes cadastros no sistema para o cliente em específico.

    Dado que estou logado com usuário com perfil de "administrador"
    E existem clientes cadastrados, cada um com 12 usuários
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    Entao sou direcionado para a página de usuários
    E existem duas páginas para listar os usuários
    E clico no link da página dois
    E existem 2 usuários listados

  Cenário: Navegar para a página de usuários do cliente logado e exibir 10 usuários
    Usuário com perfil de cliente navega para a página de usuários. É exibida a lista de usuários com dez usuário quando existem doze usuários cadastrados para o cliente.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E existem 10 usuários listados

  Cenário: Listar duas páginas quando existem doze usuários cadastrados para o cliente em específicologado
    Usuário com perfil de cliente lista duas páginas por existerem doze clientes cadastros no sistema.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E existem duas páginas para listar os usuários

  Cenário: Listar dois usuários na segunda página quando existem doze clientes cadastrados para o cliente logado
    Usuário com perfil de cliente lista dois clientes na página dois por existerem doze clientes cadastros no sistema para o cliente logado.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de projetos do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E existem duas páginas para listar os usuários
    E clico no link da página dois
    E existe 1 usuário listado