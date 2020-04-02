class ReviewsController < ApplicationController
  def create
    @supermarket = Supermarket.find(params[:supermarket_id]) # from the url! /supermarkets/:supermarket_id/reviews
    @review = Review.new(review_params)
    @review.supermarket = @supermarket
    @review.save

    # no view, let's redirect to the homepage!
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
