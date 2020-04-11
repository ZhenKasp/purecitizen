module Api
  module V1
    class TestController < SessionController
      def index

        #render json: {message: "Hello world!"}
        render json: User.all
      end
    end
  end
end
