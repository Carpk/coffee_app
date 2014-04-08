class BeansController < ApplicationController

  def show
    @reviews = Review.where(bean_id: params[:brand_id])
    @bean = Bean.find_by(id: params[:brand_id])
  end
end
