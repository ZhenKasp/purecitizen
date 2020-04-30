module Api
  module V1
    class UsersController < Api::V1::SessionController
      before_action :authenticate, except: [:create, :index]

            respond_to :json

            def index
          #respond_with

              respond_to do |format|
                format.html {render text: "Your data was sucessfully loaded. Thanks"}
                format.json { render text: User.last.to_json }
              end
            end

            def show
              respond_with User.find(params[:id])
            end

            def create
              respond_with User.create(params[:email, :password], created_at: Time.now, updated_at: Time.now)
            end

            def update
              respond_with User.update(params[:id], params[:users])
            end

            def destroy
              respond_with User.destroy(params[:id])
            end
    end
  end
end
