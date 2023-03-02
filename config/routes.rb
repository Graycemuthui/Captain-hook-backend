Rails.application.routes.draw do
  resources :order_details
  resources :customers
  resources :orders
  resources :products
  resources :categories
  resources :transactions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # home page
  root 'customers#index'
  get '/cutomers', to: 'customers#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
