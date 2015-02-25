Rails.application.routes.draw do
  root 'pages#home'

  resources :charges

  # Route for showing purchases
  resources :purchases, only: [:show]
end
