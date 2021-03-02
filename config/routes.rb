Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root to: 'pages#home'
  resources :listings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
