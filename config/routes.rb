Rails.application.routes.draw do
  root to: 'supermarkets#index'
  resources :supermarkets
end
