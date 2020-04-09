module Api
  class TestController < SessionController
    def index
      render json: {message: "Hello world!"}
    end
  end
end
