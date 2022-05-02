class SocialplateformsController < ApplicationController
	def index
		@socialplateforms = Socialplateform.all
	end
    
    def show
    	@socialplateform = Socialplateform.find(params[:id])
    end	

    def new
    	@socialplateform = Socialplateform.new
    end 
    
    def edit
        @socialplateform = Socialplateform.find(params[:id])
    end 
    
    def create
        @socialplateform = Socialplateform.new(socialplateform_params)

        if @socialplateform.save
           redirect_to socialplateform_path(@socialplateform)
        else
           render :new
        end 
    end 

    def update
        @socialplateform = Socialplateform.find(params[:id])

        if @socialplateform.update(socialplateform_params)
           redirect_to socialplateform_path(@socialplateform)
        else
           render :edit 
        end 
    end    

    def destroy
        @socialplateform = Socialplateform.find(params[:id])
        @socialplateform.destroy

        redirect_to socialplateforms_path    
    end

    def socialplateform_params
    	params.require(:socialplateform).permit(:name)         
    end 
end
