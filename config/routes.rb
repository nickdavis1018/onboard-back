Rails.application.routes.draw do
  resources :employees
  resource :users, only: [:create]
  post "/login", to: "users#login"
  post "/register", to: "users#create"
  get "/auto_login", to: "users#auto_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end