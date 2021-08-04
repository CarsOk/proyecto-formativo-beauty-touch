class LoginController < ApplicationController
    def logueo
        user = Client.where(id_Cli: params[:id_Cli], password_Cli: params[:password_Cli])
        if user.present?
        render json: user, status: 200
        else
          render json: {"mensaje": "no encontrado"}, status: 404
        end
      end
end
