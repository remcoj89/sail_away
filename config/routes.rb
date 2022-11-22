Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :boats
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings
end
