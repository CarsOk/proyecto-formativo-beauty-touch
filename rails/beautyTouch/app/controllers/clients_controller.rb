class ClientsController < ApplicationController
  def index
    registrar = Client.all
        render json: registrar, status: 200
  end

  def show
    registrar = Client.find(params[:id_Cli])
    render json: registrar, estatus: 200
  end

  def create
    registrar = Client.create(params_create)
    render json: registrar, status: 201
  end
  private
  def params_create
    params.permit(
      :id_Cli,
      :name1_Cli, 
      :name2_Cli,
      :last1_Cli, 
      :last2_Cli, 
      :birthday_Cli, 
      :cellphone_Cli,
      :email_Cli, 
      :password_Cli, 
      :direction_Cli
      )
  end

  def params_show
    params.permit(
      :id_Cli,
      )
  end
end
