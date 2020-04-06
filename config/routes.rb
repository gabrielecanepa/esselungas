Rails.application.routes.draw do
  root to: 'supermarkets#index'
  resources :supermarkets, only: [ :index, :show ] do
  # ^ same as get 'supermarkets', to: 'supermarkets#index'
  # everything inside here `belongs_to` a supermarket, so it needs an id!
    resources :products, only: [ :index ]
    resources :reviews, only: [ :create ]
    # ^ same as post '/supermarkets/:supermarket_id/reviews', to: "reviews#create"
  end

  # 1. get '/supermarkets' -> display all supermarkets
  # 2. get '/supermarkets/:id' -> display one supermarket
  # 3. get '/supermarkets/:id/products' -> display all products *for one supermarket*
  # 4. post '/supermarkets/:id/reviews' -> create a review *for one supermarket* -> redirect to 1
end
