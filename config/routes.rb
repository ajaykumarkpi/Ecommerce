Rails.application.routes.draw do
 
  devise_for :users ,path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'products#index'

  #get 'products/show'
  post 'carts',to: 'cart#show'
  post 'carts/add'
  post 'carts/remove'
  post 'carts/index'
  post 'orderables/new', to: 'orderables#create'
  #get 'orderables/index'
  #get 'users/index'
  get 'admins/show'
  get 'admins/index'
  get 'admins/new'
  get '/products/:id', to: 'products#show', as: 'product'

  
  resources :products
  resources :orderables
  resources :users, only: [:index]
  
end

