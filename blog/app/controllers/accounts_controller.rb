class AccountsController < ApplicationController
	def create
		@employee = Employee.find(params[:employee_id])
		@account = @employee.account.create(account_params)
		redirect_to employee_path(@employee)
	end

    private
	def account_params
		params.require(:account).permit(:employee_id, :account_number)
	end	
end
