class OrdersController < ApplicationController
  def new
      
  end

  private
  def order_params
    params.require(:order).permit(:location, :payment_date, :quantity, :payment_method, :buyer_details)
  end
end
