Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :boats do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings
  # Defines the root path route ("/")
  # root "articles#index"
end
