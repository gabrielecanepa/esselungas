Rails.application.routes.draw do
  get 'products/index'
  root to: 'supermarkets#index'
  resources :supermarkets, only: [ :index ] do
  # ^ same as get "supermarkets", to: "supermarkets#index"
    # inside because belongs_to a supermarket
    resources :products, only: [ :index ]
    resources :reviews, only: [ :create ] # post /supermarkets/:supermarket_id/reviews, to: "reviews#create"
  end

  # get :index -> page with all supermarkets
  # get :new -> page with form for new supermarket
  # post :create -> creates a supermarket -> back to :index
  # post :create -> creates a review -> back to :index
end
