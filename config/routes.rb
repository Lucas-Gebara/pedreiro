Rails.application.routes.draw do

  root to: "offers#index"

  get 'profiles/:id', to: "profiles#show", as: :profile
  get 'users/:id/portfolio', to: 'portfolios#show'

  devise_for :users

  resources :portfolios, only: [:destroy]

  resources :offers do
    resources :bookings, except: [:destroy]
  end

  resources :bookings , only: [] do
    resources :reviews, only: [:new, :create, :index]
  end

  resources :bookings, only: [:destroy]

  resources :offers, only: [:destroy]

end


