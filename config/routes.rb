Rails.application.routes.draw do
  devise_for :users

  get 'about' => 'about#index'

  resources :users, only: [:show, :update, :edit]
  resources :posts
  #do
  #resources :comments, only: [:create, :destroy]

  root 'posts#index'
end
