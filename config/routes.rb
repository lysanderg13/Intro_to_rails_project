Rails.application.routes.draw do
  get 'about/index'
  get 'home/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :fruits
  resources :crews
  resources :characters
  # Defines the root path route ("/")
  # root "articles#index"
end
