# encoding: utf-8
# language: pt

Funcionalidade: Cadastro de cliente
  Para poder utilizar o sistema
  Como usuário
  Quero poder cadastrar um novo cliente no sistema

  Cenário: Navegar para a página de cadastro de cliente
    Usuário com perfil de administrador navega para a página de cadastro de cliente.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    Entao sou direcionado para a página de cadastro de cliente

  Cenário: Cadastrar um novo cliente com sucesso
    Usuário com perfil de administrador cadastra um novo cliente no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "32269772" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de clientes do sistema com o cliente "Cliente" listado

  Cenário: Cadastrar um novo cliente sem sucesso porque já existe cliente cadastrado com o mesmo nome
    Usuário com perfil de administrador não tem sucesso ao cadastra um novo cliente no sistema com o nome repetido.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E cadastro um cliente com o nome repetido
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "já possui cadastro"

  Cenário: Cadastrar um novo cliente com sucesso quando o Valor/Hora é decimal
    Usuário com perfil de administrador cadastra um novo cliente no sistema.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de clientes do sistema com o cliente "Cliente" listado

  Cenário: Cadastrar um novo cliente sem sucesso quando o Nome esta em branco
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Nome possui menos de 5 caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "1234" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com no mínimo 5 e no máximo 40 caracteres"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Nome possui mais de 40 caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "12345678901234567890123456789012345678901" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com no mínimo 5 e no máximo 40 caracteres"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Endereço esta em branco
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Endereço possui menos de 8 caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com no mínimo 8 e no máximo 80 caracteres"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Endereço possui mais de 80 caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos.

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "012345678901234567890123456789012345678901234567890123456789012345678901234567891" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "12" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com no mínimo 8 e no máximo 80 caracteres"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Número esta em branco
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Número possui caracteres alphanuméricos
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "nn" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com número inteiro e positivo"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Número possui valor inteiro negativo
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "-1" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com número inteiro e positivo"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Complemento esta em branco
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo cliente sem sucesso quando o DDD esta em branco
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo cliente sem sucesso quando o DDD possui caracteres alphanuméricos
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "nn" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um número positivo de dois digitos"

  Cenário: Cadastrar um novo cliente sem sucesso quando o DDD possui menos de dois caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "1" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um número positivo de dois digitos"

  Cenário: Cadastrar um novo cliente sem sucesso quando o DDD possui mais de dois caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "111" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um número positivo de dois digitos"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Telefone esta em branco
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Telefone possui caracteres alphanuméricos
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "w2269772" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um número positivo com no mínimo 8 e no máximo 9 caracteres"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Telefone possui menos de 8 caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "2269772" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um número positivo com no mínimo 8 e no máximo 9 caracteres"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Telefone possui mais de 9 caracteres
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "9992289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "50,45" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um número positivo com no mínimo 8 e no máximo 9 caracteres"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Valor/Hora esta em branco
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "não pode ficar em branco"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Valor/Hora esta preenchido com caracteres alphanuméricos
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "1n" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um valor númerico e positivo"

  Cenário: Cadastrar um novo cliente sem sucesso quando o Valor/Hora esta preenchido com número negativo
    Usuário com perfil de administrador cadastra um novo cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que estou logado com usuário com perfil de "administrador"
    E que estou na página de clientes do sistema
    Quando clico no link "Inserir Novo Cliente"
    E sou direcionado para a página de cadastro de cliente
    E preencho o campo "Nome" com o valor "Cliente" para o cliente a ser cadastrado
    E preencho o campo "Endereço" com o valor "Rua do centro" para o cliente a ser cadastrado
    E preencho o campo "Número" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Complemento" com o valor "1222" para o cliente a ser cadastrado
    E preencho o campo "DDD" com o valor "11" para o cliente a ser cadastrado
    E preencho o campo "Telefone" com o valor "92289712" para o cliente a ser cadastrado
    E preencho o campo "Valor/Hora" com o valor "-1" para o cliente a ser cadastrado
    E clico no botão "Salvar"
    Entao sou redirecionado para a página de cadastro de cliente com erros exibindo a mensagem "preencher com um valor númerico e positivo"