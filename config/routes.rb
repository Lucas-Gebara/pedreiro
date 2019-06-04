Rails.application.routes.draw do
  root to: "offers#index"

  devise_for :users
  resources :users do
    resources :portfolio, except: [:index, :destroy, :edit, :update]
  end

  resources :bookings ,except: [:destroy] do
    resources :reviews, only: [:new, :create, :index]
  end
  resources :portfolio, only: [:destroy]# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
