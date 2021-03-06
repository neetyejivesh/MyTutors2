Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :courses do

    resources :bookings, only: [:create, :show]
    resources :reviews, only: [:new, :create, :destroy]
  end
  resources :bookings, only: [:index , :destroy,:update]
  

end
