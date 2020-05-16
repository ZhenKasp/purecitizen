Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'

  namespace :api do
    namespace :v1 do
      resource :test, only: :index
      resource :users, only: :create
      resource :session, only: :create
      resources :posts, only:  [:index, :create]
    end
  end

  get 'about' => 'about#index'

  resources :users, only: [:show, :update, :edit]
  #resources :abouts, only: [:index]
  resources :posts
  #do
  #resources :comments, only: [:create, :destroy]
end
