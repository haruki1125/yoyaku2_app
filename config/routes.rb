Rails.application.routes.draw do
  devise_for :users
  root to: 'guest#index'
  resources :events
  resources :guest
  resources :message
end
