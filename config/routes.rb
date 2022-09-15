Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :listings do
    resources :bookings, only: %I[new create]
    resources :reservations, only: %I[new create]
    resources :missions, only: %I[new create]
  end
  resources :bookings, only: [:destroy]
  resources :reservations, only: [:destroy]
  resources :missions, only: [:destroy]
end
