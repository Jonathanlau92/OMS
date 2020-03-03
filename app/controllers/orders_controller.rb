class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.buyer_details = {
      name: params[:name],
      contact_number: params[:contact_number]
    }
    if @order.save!
      redirect_to products_path, notice: 'Order is submitted successfully.'
    else
      render :new
    end
  end

  private
  def order_params
    params.require(:order).permit(:location, :payment_date, :quantity, :payment_method, :buyer_details)
  end
end
