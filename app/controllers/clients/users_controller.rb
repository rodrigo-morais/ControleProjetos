class Clients::UsersController < ApplicationController
  before_action :require_authentication
  before_action :can_access?

  def index
    @presenter = Users::IndexPresenter.new(client)
  end

  def new
    if user_params
      create
      return
    end
    @user = client.users.build
    render 'new'
  end

  def create
    @user = client.users.new(user_params)

    if @user.save
      redirect_to client_users_path, notice: 'Cadastro criado com sucesso!'
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to client_users_url(params[:client_id])
  end

  def edit
    @user = client.users.find(params[:id])
  end

  def update
    @user = client.users.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to client_users_url(params[:client_id]), notice: t('flash.notice.user_update')
    else
      render action: 'edit'
    end
  end

  private

  def client
    @client ||= Client.find(params[:client_id])
  end

  def user_params
    if params[:user].nil?  || params[:user].empty?
        return false
    else
        return params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
    end
  end

  def user_without_password_params
    return params.require(:user).permit(:full_name, :email)
  end

end
