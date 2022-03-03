Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: 'pages#dashboard'
  get "user_details", to: 'pages#user_details'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services, only: %i[index new create] do
    resources :user_services, only: %i[new create]
  end
  resources :user_services, only: %i[show destroy]
end
