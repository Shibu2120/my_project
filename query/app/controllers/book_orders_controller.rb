class BookOrdersController < ApplicationController
    def new
        @order = Order.find(params[:book_id])
        @book_order = @order.book_order.new

    def create
    	@order = Order.find(params[:order_id])
    	params[:book_order][:books].each do |book|
            @books = BookOrder.create(order_id:@order_id, book_id: book)
        end    
    end	

    def book_order_params
    	params.require(:book_order).permit(:order_id, :book_id)
    end	
    
end
