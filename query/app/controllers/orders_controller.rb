class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end
	    
    private
    def order_params
        params.require(:order).permit(:date_submitted, :status, :subtotal, :shipping, :tax, :total, :customer_id)       
    end
end 



