Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: 'pages#dashboard'
  get "user_details", to: 'pages#user_details'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services, only: %i[index new create] do
    resources :user_services, only: %i[new create]
  end
  resources :user_services, only: %i[show]
end

# service1 = Service.create(name: "Netflix", photo_url:"https://geeko.lesoir.be/wp-content/uploads/2019/02/netflix-du-changement-pour-ses-contenus-originaux-1-1024x528.jpg")

# service2 = Service.create(name: "Amazon Prime", photo_url:"https://img.phonandroid.com/2021/01/amazon-prime-video.jpg")

# service3 = Service.create(name: "Spotify", photo_url:"https://www.blow-ent.com/wp-content/uploads/2021/05/spo.jpg")

# service4 = Service.create(name: "Disney+", photo_url:"https://static-assets.bamgrid.com/product/disneyplus/images/share-default.14fadd993578b9916f855cebafb71e62.png")
