class Users::IndexPresenter

  attr_reader :client, :users

  def initialize(client, page, per_page)
    @client = client
    @users = @client.users.page(page).per(per_page)
  end

end
