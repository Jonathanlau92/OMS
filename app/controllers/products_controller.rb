class ProductsController < ApplicationController

  def index
    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save!
      redirect_to products_path, notice: 'Product is saved successfully.'
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :stock_count, :user_id)
  end
end
