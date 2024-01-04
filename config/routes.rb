Rails.application.routes.draw do
  get 'users/profile' => 'users#profile'

  get '/' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
