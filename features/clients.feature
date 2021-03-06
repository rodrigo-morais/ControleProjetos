# encoding: utf-8
# language: pt

Funcionalidade: Lista de clientes
  Para poder utilizar o sistema
  Como usuário
  Quero poder listar os clientes cadastrados no sistema

  Cenário: Navegar para a página de clientes
    Usuário com perfil de administrador navega para a página de clientes.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de projetos do sistema
    Quando clico no link de menu "Clientes"
    Entao sou direcionado para a página de clientes

  Cenário: Listar nenhum cliente quando não existem clientes cadastrado
    Usuário com perfil de administrador não lista clientes por não exister cadastro no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de projetos do sistema
    Quando clico no link de menu "Clientes"
    Entao sou redirecionado para a página de clientes do sistema com nenhum cliente listado

  Cenário: Listar cliente quando existe cliente cadastrado
    Usuário com perfil de administrador lista cliente por exister cadastro no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de projetos do sistema
    E existe cliente cadastrado
    Quando clico no link de menu "Clientes"
    Entao sou redirecionado para a página de clientes do sistema com cliente listado

  Cenário: Listar clientes quando existem clientes cadastrados
    Usuário com perfil de administrador lista clientes por existerem cadastros no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de projetos do sistema
    E existem 10 clientes cadastrados
    Quando clico no link de menu "Clientes"
    Entao sou redirecionado para a página de clientes do sistema com 10 clientes listados

  Cenário: Navegar para a página de clientes e verificar se existe o link para excluir
    Usuário com perfil de administrador navega para a página de clientes e verifica se existe link para excluir.

    Dado que estou logado com usuário com perfil de "administrador"
    E existem clientes cadastrados
    E que estou na página de clientes do sistema
    E que estou na página de clientes do sistema
    Entao para cada cliente existe um link "Excluir"

  @javascript
  Cenário: Navegar para a página de clientes, clicar no link excluir e cancelar exclusão
    Usuário com perfil de administrador navega para a página de clientesclica no link "Excluir" de um cliente e cancela a exclusão.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    E clico no link "Excluir" do cliente "Cliente5"
    E clico no botão "Cancelar" da caixa de confirmação de exclusão
    Então o cliente "Cliente5" continua na lista de clientes

  @javascript
  Cenário: Navegar para a página de clientes e clicar no link excluir e confirmar exclusão
    Usuário com perfil de administrador navega para a página de clientes, clica no link "Excluir" de um cliente e confirma a exclusão.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    E clico no link "Excluir" do cliente "Cliente5"
    E clico no botão "Ok" da caixa de confirmação de exclusão
    Então o cliente "Cliente5" não existe na lista de clientes

  Cenário: Listar dez clientes quando existem mais de dez clientes cadastrados
    Usuário com perfil de administrador lista dez clientes por existerem mais de dez cadastros no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de projetos do sistema
    E existem 12 clientes cadastrados
    Quando clico no link de menu "Clientes"
    Entao sou redirecionado para a página de clientes do sistema com 10 clientes listados

  Cenário: Listar duas páginas quando existem doze clientes cadastrados
    Usuário com perfil de administrador lista duas páginas por existerem doze clientes cadastros no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de projetos do sistema
    E existem 12 clientes cadastrados
    Quando clico no link de menu "Clientes"
    Entao sou direcionado para a página de clientes do sistema
    E existem duas páginas para listar os clientes

  Cenário: Listar dois clientes na segunda página quando existem doze clientes cadastrados
    Usuário com perfil de administrador lista dois clientes na página dois por existerem doze clientes cadastros no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de projetos do sistema
    E existem 12 clientes cadastrados
    Quando clico no link de menu "Clientes"
    Entao sou direcionado para a página de clientes do sistema
    E existem duas páginas para listar os clientes
    E clico no link da página dois
    E são exibidos 2 clientes