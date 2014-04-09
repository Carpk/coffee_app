class BrandsController < ApplicationController
  
  def create
    
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
end
