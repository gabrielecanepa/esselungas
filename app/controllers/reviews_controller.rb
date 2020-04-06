class ReviewsController < ApplicationController
  def create
    @supermarket = Supermarket.find(params[:supermarket_id]) # from the url! /supermarkets/:supermarket_id/reviews
    @review = Review.new(review_params)
    @review.supermarket = @supermarket
    @review.save # => generates the SQL query and interact with the db

    # No view, it's a POST request! Let's redirect back to the homepage!
    redirect_to supermarket_path(@supermarket)
    # @supermarket.id -> the .id is not necessary, Rails is "smart" and if pass just @supermarket, it will get it from the instance
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
