Rails.application.routes.draw do
  devise_for :users
  root to: 'prospects#home'

  get 'dashboard/schedule', to: 'sessions#schedule'
  get 'dashboard/upcoming_classes', to: 'sessions#upcoming', as: :upcoming_classes
  get 'dashboard/completed_classes', to: 'sessions#completed', as: :completed_classes

  get 'dashboard/dogs', to: 'dogs#new'
  post 'dogs', to:'dogs#create'
  patch 'dog/:id', to:'dogs#update', as: :dog

  post 'bookings', to:'bookings#create'
  delete 'bookings/:id', to:'bookings#destroy', as: :delete_booking
end
