Rails.application.routes.draw do
  root 'goals#index'

  get '/goals/dashboard', to: 'goals#dashboard'
  get '/goals/new', to: 'goals#new'

  devise_for :users

    resources :goals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
