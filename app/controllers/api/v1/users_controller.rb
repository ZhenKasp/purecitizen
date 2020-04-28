module Api
  module V1
    class UsersController < Api::V1::SessionController
      respond_to :json

      def create
        @user = User.create(params[:user])


      end


    end
  end
end
