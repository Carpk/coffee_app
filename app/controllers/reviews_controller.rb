class ReviewsController < ApplicationController

  def create

    Review.create(review_params)
    
    redirect_to :back
  end

  private

  def review_params
    params.require(:review).permit(:user, :bean_id, :experiance, :brew, :caffeine, :flavor, :rating)
  end
end
