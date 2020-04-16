Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :category, only: [:show]
  resources :tweets, only: [:new,:create]
  resources :posts, only: [:index, :new, :create,:show,:destroy] do
    resources :comments, only: :create
  end


end
