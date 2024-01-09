Rails.application.routes.draw do
  resources :rooms do
    resources :reservations
  end
  post '/rooms/:room_id/reservations(.:format)' => 'reservations#create'
  get 'users/profile' => 'users#show'
  get 'reservations' => 'reservations#index'
  get 'rooms' => 'rooms#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :reservations
end
