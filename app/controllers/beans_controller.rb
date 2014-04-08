class BeansController < ApplicationController

  def show
    puts params
    @reviews = Review.where(bean_id: params[:brand_id])
  end
end
