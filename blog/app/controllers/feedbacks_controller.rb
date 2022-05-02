class FeedbacksController < ApplicationController
	def create
		@employee = Employee.find(params[:employee_id])
		@feedback = @employee.feedbacks.create(feedback_params)
		redirect_to employee_path(@employee)
	end	

	private
	def feedback_params
		params.require(:feedback).permit(:employee_name, :body)
	end	
end
