class AccountHistoriesController < ApplicationController
	def create
		@user_accounts = UserAccount.find(params[:user_account_id])
		@account_history = @user_account.account_history.create(account_history_params)
		redirect_to user_account_path(@user_account)
	end

    private
	def account_history_params
		params.require(:account_history).permit(:user_account_id, :rating)
	end	
end
