Rails.application.routes.draw do
  resources :events
  
  root 'events#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }


end
