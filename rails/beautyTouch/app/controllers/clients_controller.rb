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
    registrar = Client.create(
      id_Cli: params[:id_Cli],
      name1_Cli: params[:name1_Cli],
      name2_Cli: params[:name2_Cli],
      last1_Cli: params[:last1_Cli],
      last2_Cli: params[:last2_Cli],
      birthday_Cli: params[:birthday_Cli],
      cellphone_Cli: params[:cellphone_Cli],
      email_Cli: params[:email_Cli],
      password_Cli: params[:password_Cli],
      direction_Cli: params[:direction_Cli],
    )
    render json: registrar, status: 201
  end
end
