class EmployeeSocialAccountController < ApplicationController
	def create
		@user = User.find(params[:User_id])
		@account = @user.account.create(account_params)
		redirect_to user_path(@user)
	end

    private
	def account_params
		params.require(:account).permit(:user_id, :socialplateform_id)
	end	
end
