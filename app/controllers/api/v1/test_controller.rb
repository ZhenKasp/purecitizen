module Api
  module V1
    class TestController < Api::V1::ApplicationController
      skip_before_action :authenticate

      def index

        #render json: {message: "Hello world!"}
        render json: User.all
      end
    end
  end
end
