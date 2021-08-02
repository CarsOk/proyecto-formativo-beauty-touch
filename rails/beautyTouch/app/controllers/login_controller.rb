class LoginController < ApplicationController
    def logueo
        user = Client.where(Id_Cli: params[:Id_Cli], Password_Cli: params[:Password_Cli])
        if user.present?
        render json: user, status: 200
        else
          render json: {"mensaje": "no encontrado"}, status: 404
        end
      end
end
