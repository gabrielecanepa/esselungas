Rails.application.routes.draw do
  root to: 'supermarkets#index'
  resources :supermarkets, only: [ :index, :new, :create, :show ] do
  # ^ same as get 'supermarkets', to: 'supermarkets#index'
  # everything inside here `belongs_to` a supermarket, so it needs an id!
    resources :products, only: [ :index ]
    resources :reviews, only: [ :create ]
    # ^ same as post '/supermarkets/:supermarket_id/reviews', to: "reviews#create"
  end

  # 1. GET '/supermarkets' -> display all supermarkets
  # 2. GET '/supermarkets/new' -> get a page with an empty form (no params, no need to find anything)
  # 3. POST '/supermarkets' -> create a supermarket (no view with post) -> redirect to 1
  # 4. GET '/supermarkets/:id' -> display *one* supermarket (param :id to find it)
  # 5. GET '/supermarkets/:id/products' -> display all products *for one supermarket*
  # 6. POST '/supermarkets/:id/reviews' -> create a review *for one supermarket* (no view with post) -> redirect to 1
end
