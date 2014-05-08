# coding: utf-8
module NavigationHelpers
  def path_to(page_name, id = 1)
    case page_name
    
    when /página inicial/
      root_path
    when /página de login/
      root_path
    when /página de projetos/
      projects_path
    when /página de cadastro de cliente com erros/
      clients_path
    when /página de cadastro de cliente/
      new_client_path
    when /página de clientes/
      clients_path
    when /página de edição de cliente/
      client = Client.friendly.find(id)
      edit_client_path(client)
    when /página de usuários/
      client = Client.friendly.find(2)
      client_users_path(client)
    when /página de cadastro de usuário/
      client = Client.friendly.find(2)
      new_client_user_path(client)
    when /página de cadastro de usuário com erros/
      client = Client.friendly.find(2)
      new_client_user_path(client)
    when /página de edição de usuário/
      client = Client.friendly.find(2)
      user = User.friendly.find(12)
      edit_client_user_path(client, user)
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
      "Now, go and add a mapping in features/support/paths.rb"
    end
  end
end

World(NavigationHelpers)
