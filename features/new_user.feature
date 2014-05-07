# encoding: utf-8
# language: pt

Funcionalidade: Cadastro de usuário
  Para poder utilizar o sistema
  Como usuário
  Quero poder cadastrar um novo usuário no sistema para um cliente específico

  Cenário: Navegar para a página de cadastro de usuário
    Usuário com perfil de administrador navega para a página de cadastro de usuário.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    Entao sou direcionado para a página de cadastro de usuário

  Cenário: Cadastrar um novo usuário com sucesso
    Usuário com perfil de administrador cadastra um novo usuário no sistema para um cliente específico.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou direcionado para a página de usuários do sistema
    E existem duas páginas para listar os usuários

  Cenário: Cadastrar um novo usuário com sucesso e verificar o mesmo na segunda página
    Usuário com perfil de administrador cadastra um novo usuário no sistema para um cliente específico e verifica a sua presença na segunda página.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    E sou direcionado para a página de usuários do sistema
    E existem duas páginas para listar os usuários
    E clico no link da página dois
    E verifico o usuário "Novo usuario cadastrar" listado

  Cenário: Cadastrar um novo usuário sem sucesso porque já existe usuário cadastrado com o mesmo nome
    Usuário com perfil de administrador não tem sucesso ao cadastrar um novo usuário no sistema com o nome repetido.

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo Usuario 2" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "já possui cadastro"

  Cenário: Cadastrar um novo usuário sem sucesso quando o Nome esta em branco
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo usuário sem sucesso quando o e-mail esta em formato errado
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadstrado" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario1usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "não é válido"

  Cenário: Cadastrar um novo usuário sem sucesso quando o e-mail já esta em uso
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadstrado" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario1@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "já está em uso"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha esta em branco
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha não pode ficar em branco"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha possuí em menos de 6 caracteres
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "12345" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha é muito curto"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha possuí em mais de 8 caracteres
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "123456789" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha é muito longo"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha fora do padrão
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "1234567" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha não é válido"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Confirmar Senha esta em branco
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Confirmar Senha não pode ficar em branco"

  Cenário: Cadastrar um novo usuário sem sucesso quando a confirmação da Senha não esta em brancocorreta
    Usuário com perfil de administrador cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que existem clientes cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Usuários" para o cliente "Cliente2"
    E que existem usuários cadastrados
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "123456" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "não está de acordo com a confirmação"

# Perfil Cliente

  Cenário: Navegar para a página de cadastro de usuário
    Usuário com perfil de cliente navega para a página de cadastro de usuário.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    Entao sou direcionado para a página de cadastro de usuário

  Cenário: Cadastrar um novo usuário com sucesso
    Usuário com perfil de cliente cadastra um novo usuário no sistema para um cliente específico.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou direcionado para a página de usuários do sistema
    E existem duas páginas para listar os usuários

  Cenário: Cadastrar um novo usuário com sucesso e verificar a sua presença na lista de usuários
    Usuário com perfil de cliente cadastra um novo usuário no sistema e verifica se o mesmo esta listado.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    E sou direcionado para a página de usuários do sistema
    E existem duas páginas para listar os usuários
    E clico no link da página dois
    E verifico o usuário "Novo usuario cadastrar" listado

  Cenário: Cadastrar um novo usuário sem sucesso porque já existe usuário cadastrado com o mesmo nome
    Usuário com perfil de cliente não tem sucesso ao cadastrar um novo usuário no sistema com o nome repetido.

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo Usuario 2" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "já possui cadastro"

  Cenário: Cadastrar um novo usuário sem sucesso quando o Nome esta em branco
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo usuário sem sucesso quando o e-mail esta em formato errado
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadstrado" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario1usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "não é válido"

  Cenário: Cadastrar um novo usuário sem sucesso quando o e-mail já esta em uso
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuario cadstrado" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario1@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "já está em uso"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha esta em branco
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha não pode ficar em branco"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha possuí em menos de 6 caracteres
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "12345" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha é muito curto"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha possuí em mais de 8 caracteres
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "123456789" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha é muito longo"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Senha fora do padrão
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "1234567" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "@Usu2014" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Senha não é válido"

  Cenário: Cadastrar um novo usuário sem sucesso quando a Confirmar Senha esta em branco
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "Confirmar Senha não pode ficar em branco"

  Cenário: Cadastrar um novo usuário sem sucesso quando a confirmação da Senha não esta em brancocorreta
    Usuário com perfil de cliente cadastra um novo usuário no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existem clientes cadastrados
    E que estou logado com usuário com perfil de "cliente"
    E que estou na página de usuários do sistema
    Quando clico no link "Usuários"
    E sou direcionado para a página de usuários
    E clico no link "Inserir Novo Usuário"
    E sou direcionado para a página de cadastro de usuário
    E preencho o campo "Nome" com o valor "Novo usuário cadastrar" para o usuário a ser cadastrado
    E preencho o campo "E-mail" com o valor "usuario@usuario.com" para o usuário a ser cadastrado
    E preencho o campo "Senha" com o valor "@Usu2014" para o cliente a ser cadastrado
    E preencho o campo "Confirmar Senha" com o valor "123456" para o usuário a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de usuário com erros exibindo a mensagem "não está de acordo com a confirmação"