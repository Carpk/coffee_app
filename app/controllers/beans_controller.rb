class BeansController < ApplicationController

  def create
    if Bean.find_by(brand_id: params[:bean][:brand_id], name: params[:bean][:name])
      # flash[:name_taken] = error msg
    else
      Bean.create(bean_params)
    end
    redirect_to :back
  end

  def show
    @reviews = Review.where(bean_id: params[:brand_id])
    @bean = Bean.find_by(id: params[:brand_id])
    @new_review = Review.new
  end

  private

  def bean_params
    params.require(:bean).permit(:name, :roast, :description, :brand_id)
  end
end
