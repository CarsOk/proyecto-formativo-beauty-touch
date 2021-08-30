class ClientsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        clients = Client.all
        render json: clients, status: :ok 
      end
    
      def create
        client= Client.new(create_params)
        client.save
        render json: client, status: :created
      end
     
      def create_params
        params.require(:client).permit(
            :id_Cli,
            :name1_Cli,
            :name2_Cli,
            :lastName1_Cli,
            :lastName2_Cli,
            :cellphone_Cli,
            :direction_Cli,
            :email,
            :password,
            :password_confirmation
        )
      end
end
