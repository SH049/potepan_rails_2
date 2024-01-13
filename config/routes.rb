Rails.application.routes.draw do
  get 'intros/show'
  resources :rooms do
    resources :reservations
  end
  # post '/rooms/:room_id/reservations(.:format)' => 'reservations#create'
  get 'users/profile/edit' => 'intros#edit'
  get 'users/profile' => 'intros#show'
  get 'users/account' => 'users#index'
  get 'reservations' => 'reservations#index'
  get 'rooms' => 'rooms#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms, :reservations, :users, :intros
end
