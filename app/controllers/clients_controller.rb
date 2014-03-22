class ClientsController < ApplicationController
  before_action :require_authentication
  before_action :can_access?

  PER_PAGE = 10

  def index
    @clients = Client.all.page(params[:page]).per(PER_PAGE)
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to clients_path, notice: 'Cadastro criado com sucesso!'
    else
      render "clients/new"
    end
  end

  def edit
    @client = Client.find(params[:id])
    @client.time_value_string = ('%.2f' % @client.time_value).gsub('.', ',')
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(client_params)
      redirect_to clients_path, notice: t('flash.notice.client_update')
    else
      render action: 'edit'
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    redirect_to clients_url
  end

  private
    def client_params
      params.require(:client).permit(:name, :address, :number, :complement, :ddd, :phone, :time_value_string, :time_value)
    end
end
