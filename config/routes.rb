Rails.application.routes.draw do
  root "pages#home"

  # users routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users do
    resources :cars
  end
end
