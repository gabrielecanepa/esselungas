class SupermarketsController < ApplicationController
  before_action :set_supermarket, only: [:show, :edit, :update, :destroy]

  def index
    @supermarkets = Supermarket.all.reverse
    @review = Review.new
  end

  def show; end

  def new
    @supermarket = Supermarket.new
  end

  # No view, it's a POST request
  def create
    @supermarket = Supermarket.create(supermarket_params)

    redirect_to root_path
  end

  def edit; end

  # No view, it's a Patch request
  def update
    @supermarket.update(supermarket_params)

    redirect_to root_path
  end

  # No view, it's a Delete request
  def destroy
    @supermarket.delete

    redirect_to supermarkets_path
  end

  private

  def set_supermarket
    @supermarket = Supermarket.find(params[:id])
  end

  def supermarket_params
    params.require(:supermarket).permit(:name, :address, :open)
  end
end
