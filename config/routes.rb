Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts, except: :index
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
