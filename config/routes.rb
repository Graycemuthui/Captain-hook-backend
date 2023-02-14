Rails.application.routes.draw do
  resources :customers
  resources :orders
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # home page
  root 'customers#index'
  get '/cutomers', to: 'customers#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
