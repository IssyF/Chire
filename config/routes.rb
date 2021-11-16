Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'users#profile'

  resources :chefs, only: %i[new create index show] do
    resources :bookings, only: %i[new create]
  end

  # Only code edit and update for a diner if we have time at the end - need update to change confirmed? boolean
  resources :bookings, only: %i[destroy edit update show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
