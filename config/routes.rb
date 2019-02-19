Rails.application.routes.draw do
  resources :events do
    resources :comments
  end

  root 'events#index'
  devise_for :users

  get 'events/:id/RSVP', to: 'events#join', as: 'join_event'
  delete 'events/:id/RSVP', to: 'events#leave', as: 'leave_event'
end
