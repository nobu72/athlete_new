Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :category, only: [:show]
  resources :posts, only: [:index, :new, :create,:show] 
    # resources :category, only: [:show]
  end

end
