Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'

  namespace :api do
    resources :test, only: %i(index)
  end

  get 'about' => 'about#index'

  resources :users, only: [:show, :update, :edit]
  #resources :abouts, only: [:index]
  resources :posts
  #do
  #resources :comments, only: [:create, :destroy]
end
