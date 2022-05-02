class EmployeesController < ApplicationController
	def index
      if params[:search]
         search_employees
      end   
      if params[:sort] == "phone_number"
          @employees = Employee.all.sort_by{|employee| employee.phone_number}
      elsif params[:sort] != "phone_number"
          @employees = Employee.order(params[:sort])
      else 
          @employees = Employee.all  
      end
   end	

   def search_employees
    if @employee = Employee.all.find{|employee| employee.first_name.include?(params[:search])}
      redirect_to employee_path(@employee)
    end
   end

	def show
        @employee = Employee.find(params[:id])
	end	

	def new
		@employee = Employee.new
	end	

	def edit
        @employee = Employee.find(params[:id])
	end	

	def create
		@employee = Employee.new(employee_params)

    respond_to do |format|
		if @employee.save
            @employee.images.attach(params[:employee][:images])
            params[:employee][:socialplateforms].each do |platform|
               @socialplatform = EmployeeSocialAccount.new(employee_id: @employee.id, socialplateform_id: platform)
               @socialplatform.save
            end
		    redirect_to employee_path(@employee), notice: "Employees data is successfully created" 
        else
        	 render :new
        end 	
	  end	
    end

    def update
    	@employee = Employee.find(params[:id])
    respond_to do |format|
       if @employee.update(employee_params)
          format.html { redirect_to employee_path(@employee), notice: "Employees data is successfully updated"}
       else
          format.html {render :edit}
       end 
     end      	
    end 

    def destroy
    	@employee = Employee.find(params[:id])
    	@employee.destroy
     respond_to do |format|
         format.html {redirect_to employees_path, notice: "Employee Data successfully destroy"}
     end 
    end     	
    private
    def set_employee
    	@employee = Employee.find(params[:id])
    end
     
    	
	def employee_params
		params.require(:employee).permit(:first_name, :image, :socialplatform, :last_name, :phone_number, :date_of_birth, :month, :year, :day, :gmail_id, :gmail_id_confirmation, :address, :adhar_number, :gender, :account_number )
    end
end    