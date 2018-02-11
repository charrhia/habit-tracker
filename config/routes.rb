Rails.application.routes.draw do
  root 'goals#splash'

  get '/goals/dashboard', to: 'goals#dashboard'
  get '/goals/new', to: 'goals#new'
  get '/log', to: 'goals#log'

  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :goals, only: [:index]
        resources :inputs, only: [:index] do
          collection do
            get :day
            get :week
            get :month
        end
      end
    end
  end

  resources :goals do
    resources :inputs, only: [:index, :new, :create, :destroy]
  end
  resources :inputs, only: [:index, :new, :create]
end
