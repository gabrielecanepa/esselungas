class SupermarketsController < ApplicationController
  before_action :set_supermarket, only: %i[show edit update destroy] # <- array of symbols!

  def index
    @supermarkets = Supermarket.all.reverse
  end

  def show
    # Remember the before_action! Here we also have @supermarket
    @review = Review.new
  end

  def new
    @supermarket = Supermarket.new
  end

  # No view, it's a POST request
  def create
    @supermarket = Supermarket.create(supermarket_params)

    redirect_to root_path
  end

  def edit; end

  # No view, it's a PATCH/PUT request
  def update
    @supermarket.update(supermarket_params)

    redirect_to root_path
  end

  # No view, it's a DELETE request
  def destroy
    @supermarket.delete

    redirect_to root_path
  end

  private

  def set_supermarket
    @supermarket = Supermarket.find(params[:id])
  end

  def supermarket_params
    params.require(:supermarket).permit(:name, :address, :open, :picture)
  end
end
