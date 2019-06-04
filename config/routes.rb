Rails.application.routes.draw do
  root to: "offers#index"

  devise_for :users
  resources :portfolio, only: [:destroy]# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :offers, only: [:index, :new, :create, :destroy]

  resources :users do
    resources :portfolio, except: [:index, :destroy, :edit, :update]
  end

  resources :bookings ,except: [:destroy] do
    resources :reviews, only: [:new, :create, :index]
  end
end
