module Api
  module V1
    class ApplicationController < ::ApplicationController
      protect_from_forgery with: :null_session
      before_action :authenticate

      private

      def authenticate
        authenticate_or_request_with_http_token do |token, options|
          @current_user = User.find_by(token: token)
        end

      def  current_user
        @current_user ||= authenticate
      end
      end
    end
  end
end
