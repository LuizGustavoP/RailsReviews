Rails.application.routes.draw do
  get 'users/index'

  resources :oreviews
  resources :prs
  resources :ors
  devise_for :users
  get 'sessions/new'
  resources :games, shallow: true
  resources :previews
  resources :users
  resources :platforms
  resources :publishers
  resources :developers
  get 'hdream/index'
  match '/users/:id',     to: 'users#show',       via: 'get'
  root 'hdream#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
