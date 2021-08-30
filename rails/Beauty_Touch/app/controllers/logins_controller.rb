class LoginsController < ApplicationController
    skip_before_action :verify_authenticity_token

  def create
    user = Client.where(email: params[:email]).first

    if user.valid_password?(params[:password])
      render json: user.as_json(only: [:email, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end

  end
end
# :authentication_token