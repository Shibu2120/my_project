class AuthorsController < ApplicationController
	def index
		@authors = Author.all.paginate(page: params[:page], per_page: 1)
	end

	def edit
		@author = Author.find(params[:id])
	end
	
	def new
	    @author = Author.new
	end

	def hash_range
		@author = Author.paginate(page: params[:page], per_page: 10)
       # @author = Author.first(2)
	end	

	def show
		@author = Author.find(params[:id])
	end	
	
	def create
	    @author = Author.new(author_params)
	    if @author.save
	       redirect_to authors_path
	    else
	       render :new
	    end 
	end 

	def update
	    @author = Author.find(params[:id])
        if @author.update(author_params)
           redirect_to authors_path
        else
           render :edit 
        end 
    end 

    def destroy
    	@author = Author.find(params[:id])
    	@author.destroy

    	redirect_to authors_path
    end 	
    
    private
    def author_params
        params.require(:author).permit(:first_name, :last_name, :title)       
    end
end 




