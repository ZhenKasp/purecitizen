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

        if result.all?(&:persisted?)
          render json: { "Post created" }
        else
          render error: { "Post was not created" }
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
