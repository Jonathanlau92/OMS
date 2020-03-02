class ProductsController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.image_url = @product.product_image.blob.service_url.sub(/\?.*/, '') if @product.product_image.attached?
    if @product.save!
      redirect_to products_path, notice: 'Product is saved successfully.'
    else
      render :new
    end
  end

  def dashboard
    @products = Product.all
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :stock_count, :user_id, :product_image, :image_url)
  end
end
