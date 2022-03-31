Rails.application.routes.draw do
  resources :birthdays
  resources :models
  #get '/new_user_registration", to: 'users#sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
  devise_for :users
  resources :birthdaysc
  resources :useroptions
  
  resources :user_options


end
