Rails.application.routes.draw do
  root to: 'supermarkets#index'
  resources :supermarkets, only: [ :index ] do
    # inside because belongs_to a supermarket
    resources :reviews, only: [ :create ] # post /supermarkets/:supermarket_id/reviews, to: "reviews#create"
  end

  # get :index -> page with all supermarkets
  # get :new -> page with form for new supermarket
  # post :create -> creates a supermarket -> back to :index
  # post :create -> creates a review -> back to :index
end
