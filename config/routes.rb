Rails.application.routes.draw do
  root 'goals#index'

  get '/goals/dashboard', to: 'goals#dashboard'
  get '/goals/new', to: 'goals#new'

  devise_for :users

  resources :goals do
    resources :inputs, only: [:index, :new, :create, :destroy]
  end


  resources :inputs, only: [:index, :new]


end
