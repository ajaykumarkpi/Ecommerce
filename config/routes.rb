Rails.application.routes.draw do
 
  devise_for :users ,path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'products#index'

  post 'carts',to: 'cart#show'
  post 'carts/add'
  post 'carts/remove'
  post 'carts/index'
  post 'orderables/new', to: 'orderables#create'
  get 'users/index'
  get 'orderables/index'
  get 'products/show'


  resources :products
  resources :orderables
  resources :users, only: [:index]
  
end

