Rails.application.routes.draw do
  root "pages#home"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/users/:id', to: 'users#show'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
end
