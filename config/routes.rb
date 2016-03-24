Rails.application.routes.draw do
  root 'cars#index'
  get 'cars/index'
  get 'cars/edit'

  resources :cars
end
