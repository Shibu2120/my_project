class ReviewsController < ApplicationController
	def index
		@reviews = Review.all
	end

	def edit
		@review = Review.find(params[:id])
	end
	
	def new
	    @review = Review.new
	end

	def show
		@review = Review.find(params[:id])
	end	
	
	def create
	    @review = Review.new(review_params)
	    if @review.save
	       redirect_to reviews_path
	    else
	       render :new
	    end 
	end 

	def update
	    @review = Review.find(params[:id])
	    if @review = Review.update(review_params)         
           redirect_to reviews_path
        else
           render :edit 
        end 
    end 

    def destroy
    	@review = Review.find(params[:id])
    	@review.destroy

    	redirect_to reviews_path
    end 	
    
    private
    def review_params
        params.require(:review).permit(:title, :body, :rating, :state, :customer_id, :book_id)       
    end
end 


