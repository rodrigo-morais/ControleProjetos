class Users::IndexPresenter

  attr_reader :client, :users

  def initialize(client)
    @client = client
    @users = @client.users
  end

end
