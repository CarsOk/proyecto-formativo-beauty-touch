class RegistratorController < ApplicationController
    def index
        registrar = Client.all
        render json: registrar, status: 200
    end
    def create
          registrar = Client.create(
            Id_Cli: params[:Id_Cli],
            Name1_cli: params[:Name1_cli],
            Name2_Cli: params[:Name2_Cli],
            LastName1_Cli: params[:LastName1_Cli],
            LastName2_Cli: params[:LastName2_Cli],
            Birthday_Cli: params[:Birthday_Cli],
            Cellphone_Cli: params[:Cellphone_Cli],
            Email_Cli: params[:Email_Cli],
            Password_Cli: params[:Password_Cli],
            Direction_Cli: params[:direction_Cli],
          )
          render json: registrar, status: 201
    end
      
    def show
        registrar = Client.find(params[:Id_Cli])
        render json: registrar, estatus: 200
    end
      
    def input
    end
      
    def destroy
    end
end
