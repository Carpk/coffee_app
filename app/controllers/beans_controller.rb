class BeansController < ApplicationController

  def create
    
  end

  def show
    @reviews = Review.where(bean_id: params[:brand_id])
    @bean = Bean.find_by(id: params[:brand_id])
    @new_review = Review.new
  end
end
