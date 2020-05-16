module Api
  module V1
    class UsersController < Api::V1::ApplicationController
      before_action :authenticate, except: [:create]


      def index
      end

      def create
        user = User.create(user_params)
        render json: { token: user.token }
      end

      def user_params
        params.permit(:email, :password, :first_name, :last_name)
      end
    end
  end
end
