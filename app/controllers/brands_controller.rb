class BrandsController < ApplicationController
  
  def create
    puts params[:brand]
    if Brand.find_by(name: params[:brand][:name])
      # flash[:name_taken] = error msg
    else
     Brand.create(brand_params)
    end
    redirect_to :back
  end
  
  def index
    @brands = Brand.all
    @new_brand = Brand.new
  end

  def show
    @beans = Bean.where(brand_id: params[:id])
    @brand = Brand.find_by(id: params[:id])
    @new_bean = Bean.new
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :store)
  end
end
