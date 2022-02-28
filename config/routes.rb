Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services, only: %i[index show]
end

# service1 = Service.new(name: "Netflix", photo_url:"https://geeko.lesoir.be/wp-content/uploads/2019/02/netflix-du-changement-pour-ses-contenus-originaux-1-1024x528.jpg")

# service2 = Service.new(name: "Amazon Prime", photo_url:"https://img.phonandroid.com/2021/01/amazon-prime-video.jpg")

# service3 = Service.new(name: "Spotify", photo_url:"https://www.blow-ent.com/wp-content/uploads/2021/05/spo.jpg")
