Rails.application.routes.draw do
  get 'reservations' => 'reservations#index'
  get 'rooms' => 'rooms#index'
  devise_for :users
  root 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :reservations
end
