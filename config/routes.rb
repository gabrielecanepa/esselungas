Rails.application.routes.draw do
  root to: 'supermarkets#index'
  resources :supermarkets, only: [ :index ] do
  # ^ same as get 'supermarkets', to: 'supermarkets#index'
  # everything inside here `belongs_to` a supermarket!
    resources :products, only: [ :index ]
    resources :reviews, only: [ :create ]
    # ^ same as post '/supermarkets/:supermarket_id/reviews', to: "reviews#create"
  end

  # 1. get '/supermarkets' -> display all supermarkets
  # 2. get '/supermarkets/:id/products' -> display all products *for one supermarket*
  # 3. post '/supermarkets/:id/reviews' -> create a review *for one supermarket* -> back to 1
end
