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
      edit_client_path(id)
    when /página de usuários/
      client_users_path(2)
    when /página de cadastro de usuário/
      new_client_user_path(2)
    when /página de cadastro de usuário com erros/
      new_client_user_path(2)
    when /página de edição de usuário/
      edit_client_user_path(2, 11)
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
      "Now, go and add a mapping in features/support/paths.rb"
    end
  end
end

World(NavigationHelpers)
