class AccountHistoriesController < ApplicationController
	def create
		@account = Account.find(params[:account_id])
		@account = @account.account.create(account_history_params)
		redirect_to account_path(@account)
	end

    private
	def account_history_params
		params.require(:account_history).permit(:account_id, :credit_rating)
	end
end
