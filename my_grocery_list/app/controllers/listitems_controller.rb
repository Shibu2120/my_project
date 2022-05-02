class ListitemsController < ApplicationController
	def new
		@user = User.find(params[:user_id])
		@listitem = @user.listitems.new
	end	

	def create
		@user = User.find(params[:user_id])
		@groceries = @user.listitems.create(user_grocery_params)

		redirect_to user_path(@user)
	end	
    
    private
	def user_grocery_params
		params.require(:listitem).permit(:user_id, :grocery_id, :quantity)
	end		    
end
