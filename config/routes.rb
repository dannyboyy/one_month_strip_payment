Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'

  resources :charges

  # Route for showing purchases
  resources :purchases, only: [:show]
end
