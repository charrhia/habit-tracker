Rails.application.routes.draw do
  root 'goals#splash'

  get '/goals/dashboard', to: 'goals#dashboard'
  get '/goals/new', to: 'goals#new'


  devise_for :users


  namespace :api do
    namespace :v1 do
      resources :goals, only: [:index]
        resources :inputs, only: [:index]
    end
  end


  resources :goals do
    resources :inputs, only: [:index, :new, :create, :destroy]
  end


  resources :inputs, only: [:index, :new, :create]

end
