class LoginController < ApplicationController
  
    def logueo
        user = Client.where(client_params)
        if user.present?
        render json: user, status: 200
        else
          render json: {"mensaje": "no encontrado"}, status: 404
        end
      end

      private
      def client_params
        params.permit(:id_Cli, :password_Cli)
      end 
end
