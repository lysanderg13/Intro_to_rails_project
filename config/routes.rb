Rails.application.routes.draw do
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Route to Fruits
  resources :fruits, only: %i[index show]

  # Route to Crews
  resources :crews, only: %i[index show]

  # Route to Characters
  resources :characters, only: %i[index show]

  # Manual Route to About Page
  get "about", to: "about#index"
end
