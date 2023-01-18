Rails.application.routes.draw do
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "welcome#index"
  resources :orders
  resources :users

  get '/orders' => "orders#index", as: :user_root

end
