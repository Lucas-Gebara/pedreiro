Rails.application.routes.draw do

  get 'profiles/:id', to: "profiles#show", as: :profile

  root to: "offers#index"

  devise_for :users
  resources :offers, only: [:index, :new, :create, :destroy]

  resources :users do
    resources :portfolio, except: [:index, :destroy, :edit, :update]
  end

  resources :bookings ,except: [:destroy] do
    resources :reviews, only: [:new, :create, :index]
  end
end
