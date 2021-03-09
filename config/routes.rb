Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :profiles 
  devise_for :users
  root to: 'pages#home'
  resources :listings
  get 'payments/success', to: 'pages#payment_success'
  post 'payments/webhook', to: 'payments#webhook'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
