Rails.application.routes.draw do
  root to: "offers#index"

  devise_for :users
  resources :users do
  resources :portfolios, only: [:new, :create]
  end

  get 'users/:id/portfolio', to: 'portfolios#show'

  resources :bookings ,except: [:destroy] do
    resources :reviews, only: [:new, :create, :index]
  end
  resources :portfolios, only: [:destroy]# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
