Rails.application.routes.draw do
  resources :ordenes
  resources :productos
  devise_for :clientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
