module Api
  module V1
    class SessionsController < Api::V1::ApplicationController
      skip_before_action :authenticate

      def show
        byebug
      end

      def create
        @user = User.find_by(email: params[:email])
        if @user&.valid_password?(params["password"])
          render json: { token: @user.token }
        else
          render json: { error: "Wrong params" }
        end
      end
    end
  end
end
