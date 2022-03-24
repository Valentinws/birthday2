Rails.application.routes.draw do
  #get '/new_user_registration", to: 'users#sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
  devise_for :users
  resources :birthdaysc

end
