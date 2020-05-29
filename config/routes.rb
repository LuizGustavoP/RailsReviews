Rails.application.routes.draw do
  get 'hdream/index'
  resources :games
  root 'hdream#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
