Rails.application.routes.draw do
  get 'message/index'
  get 'guest/index'
  get 'events/index'
  root to: 'guest#index'
  resources :events
  resources :guest
  resources :message
end
