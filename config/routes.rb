Rails.application.routes.draw do
  resources :mainfarms
  resources :animals
  resources :farmers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'farmers#index'
end
