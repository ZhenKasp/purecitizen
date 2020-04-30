module Api
  module V1
    class PostsController < Api::V1::ApplicationController
      skip_before_action :authenticate

      def index
          @post = Post.all.order(:title)
        render json: { posts: @post }
      end

      def show
      end
    end
  end
end
