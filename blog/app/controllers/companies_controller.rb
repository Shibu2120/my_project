class CompaniesController < ApplicationController
	def index
		@companies = Companie.all
	end	

	def show
		@companie = Companie.find(params[:id])
	end	

	def new
		@companie = Companie.new
	end	

	def edit
	    @companie = Companie.find(params[:id])
    end
     
	def create
		@companie = Companie.new(companie_params)
       
		if @companie.save
			redirect_to company_path(@companie)
		else
		    render :new
        end
    end 

    def update
       @companie = Companie.find(params[:id]) 

       if @companie.update(companie_params)
       	    redirect_to companie_path(@companie)
       else
            render :edit
       end 
    end    

    def destroy
    	@companie = Companie.find(params[:id])
    	@companie.destroy

    	redirect_to companies_path
    end	

	def companie_params
		params.require(:companie).permit(:name, :place, :description)
    end

end
