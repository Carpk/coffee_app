class BrandsController < ApplicationController
  
  def index
    @brands = Brand.all
  end

  def show
    @beans = Bean.where(brand_id: params[:id])
    
  end
end
