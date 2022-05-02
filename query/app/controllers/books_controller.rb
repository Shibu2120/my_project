class BooksController < ApplicationController
	def index
		if params[:search].present?
			@books = Book.joins(:author).where("authors.first_name Like ?", "%"+params[:search]+"%")
		else		
			@books = Book.all
		end
	end

	def edit
		@book = Book.find(params[:id])
	end

	def books_order_by_name
		# @books = Book.all.order(title: :asc)

		@books = Book.where("title = ?", "Harry poter")
	end
	
	def new
	    @book = Book.new
	end

	def show
		@book = Book.find(params[:id])
		# @book = Book.find_by! title: "Harry poter"
	end	
	
	def create
	    @book = Book.new(book_params)
	    if @book.save
	       redirect_to books_path
	    else
	       render :new
	    end 
	end 

	def update
	    @book = Book.find(params[:id])
	    if @book.update(book_params)         
           redirect_to books_path
        else
           render :edit 
        end 
    end 

    def destroy
    	@book = Book.find(params[:id])
    	@book.destroy

    	redirect_to books_path
    end 	
    
    private
    def book_params
        params.require(:book).permit(:title, :year_of_published, :price, :out_of_print, :views, :supplier_id, :author_id)       
    end
end 
