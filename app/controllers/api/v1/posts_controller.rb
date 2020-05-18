module Api
  module V1
    class PostsController < Api::V1::ApplicationController
      #skip_before_action :authenticate

      def index
        @post = Post.all    #.order(:title)
        render json: { post: @post }
      end

      def create
        @post = Post.create(post_params)

        if @post.persisted?
          render json: { message: "Запрос создан" }
        else
          render json: { error: @post.errors.full_messages }
        end
      end

      def show
      end

      private
      def post_params
        params.permit(:title, :body, :image, :longitude, :latitude)
      end
    end
  end
end
