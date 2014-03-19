# language: pt

Funcionalidade: Editar dados de cliente cadastrado
  Para poder utilizar o sistema
  Como usuário
  Quero poder editar os dados de um cliente cadastrado no sistema

  Cenário: Navegar para a página de edição dos dados do cliente
    Usuário com perfil de administrador navega para a página edição de dados do cliente.

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    Entao sou direcionado para a página de edição de cliente do sistema

  Cenário: Navegar para a página de edição dos dados do cliente e verificar se os campos foram preenchidos
    Usuário com perfil de administrador navega para a página edição de dados do cliente e verifica preenchimento dos campos.

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    Entao sou direcionado para a página de edição de cliente do sistema
    E campo "Nome" esta preenchido com o valor "Cliente"
    E campo "Endereço" esta preenchido com o valor "Rua centro"
    E campo "Número" esta preenchido com o valor "11"
    E campo "Complemento" esta preenchido com o valor "11"
    E campo "DDD" esta preenchido com o valor "11"
    E campo "Telefone" esta preenchido com o valor "92289712"
    E campo "Valor/Hora" esta preenchido com o valor "50,00"

  Cenário: Editar nome do cliente
    Usuário com perfil de administrador navega para a página edição de dados do cliente e verifica preenchimento dos campos e altera o nome do mesmo.

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Nome" para o valor "Cliente ALTERADO"
    E clico no botão "Salvar" para alterar o cliente
    Entao sou direcionado para a página de clientes do sistema
    E encontro o cliente com o novo nome "Cliente ALTERADO"

  Cenário: Editar um novo cliente sem sucesso quando o Nome esta em branco
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Nome" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "não pode ficar em branco"

  Cenário: Editar cliente sem sucesso quando o Nome possui menos de 5 caracteres
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos.

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Nome" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com no mínimo 5 e no máximo 40 caracteres"

  Cenário: Editar cliente sem sucesso quando o Endereço esta em branco
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Endereço" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "não pode ficar em branco"

  Cenário: Editar cliente sem sucesso quando o Endereço possui menos de 8 caracteres
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos.

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Endereço" para o valor "Rua"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com no mínimo 8 e no máximo 80 caracteres"

  Cenário: Editar cliente sem sucesso quando o Endereço possui mais de 80 caracteres
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos.

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Endereço" para o valor "012345678901234567890123456789012345678901234567890123456789012345678901234567891"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com no mínimo 8 e no máximo 80 caracteres"

  Cenário: Editar cliente sem sucesso quando o Número esta em branco
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Número" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "não pode ficar em branco"

  Cenário: Editar cliente sem sucesso quando o Número possui caracteres alphanuméricos
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Número" para o valor "ss"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com número inteiro e positivo"

  Cenário: Editar cliente sem sucesso quando o Número possui valor inteiro negativo
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Número" para o valor "-1"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com número inteiro e positivo"

  Cenário: Editar cliente sem sucesso quando o Complemento esta em branco
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Complemento" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "não pode ficar em branco"

  Cenário: Editar cliente sem sucesso quando o DDD esta em branco
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "DDD" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "não pode ficar em branco"

  Cenário: Editar cliente sem sucesso quando o DDD possui caracteres alphanuméricos
    Usuário com perfil de administrador editar cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "DDD" para o valor "dd"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um número positivo de dois digitos"

  Cenário: Editar um novo cliente sem sucesso quando o DDD possui menos de dois caracteres
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "DDD" para o valor "1"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um número positivo de dois digitos"

  Cenário: Editar cliente sem sucesso quando o DDD possui mais de dois caracteres
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "DDD" para o valor "111"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um número positivo de dois digitos"

  Cenário: Editar cliente sem sucesso quando o Telefone esta em branco
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Telefone" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "não pode ficar em branco"

  Cenário: Editar cliente sem sucesso quando o Telefone possui caracteres alphanuméricos
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Telefone" para o valor "dddddddd"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um número positivo com no mínimo 8 e no máximo 9 caracteres"

  Cenário: Editar cliente sem sucesso quando o Telefone possui menos de 8 caracteres
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Telefone" para o valor "1234567"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um número positivo com no mínimo 8 e no máximo 9 caracteres"

  Cenário: Editar cliente sem sucesso quando o Telefone possui mais de 9 caracteres
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Telefone" para o valor "1234567890"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um número positivo com no mínimo 8 e no máximo 9 caracteres"

  Cenário: Editar cliente sem sucesso quando o Valor/Hora esta em branco
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Valor/Hora" para o valor ""
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "não pode ficar em branco"

  Cenário: Editar cliente sem sucesso quando o Valor/Hora esta preenchido com caracteres alphanuméricos
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Valor/Hora" para o valor "ss"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um valor númerico e positivo"

  Cenário: Editar cliente sem sucesso quando o Valor/Hora esta preenchido com número negativo
    Usuário com perfil de administrador edita cliente no sistema e recebe uma mensagem de erro no preenchimento dos campos

    Dado que existe cliente cadastrados
    E que estou na página de clientes do sistema
    Quando clico no link "Editar" do cliente "Cliente"
    E sou direcionado para a página de edição de cliente do sistema
    E altero "Valor/Hora" para o valor "-22"
    E clico no botão "Salvar" para alterar o cliente
    Entao é exibida a mensagem "preencher com um valor númerico e positivo"