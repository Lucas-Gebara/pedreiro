Rails.application.routes.draw do

  get 'profiles/:id', to: "profiles#show", as: :profile

  root to: "offers#index"

  devise_for :users


  resources :offers do
    resources :bookings, except: [:destroy]
  end

  get 'users/:id/portfolio', to: 'portfolios#show'

  resources :bookings , only: [] do
    resources :reviews, only: [:new, :create, :index]
  end
  resources :portfolios, only: [:destroy]# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


