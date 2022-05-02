class AccountsController < ApplicationController
	def index
		@accounts = Account.all
    end		

    def new
    	@account = Account.new
    end

    def edit
    	@account = Account.find(params[:id])
    end	

    def show
    	@account = Account.find(params[:id])
    end	

    def create
    	@supplier = Supplier.find(params[:supplier_id])
    	@account = @supplier.account.create(account_params)
    	if @account.save
    		redirect_to supplier_path(@supplier)
    	else 
    	    render :new
    	end  
    end

    def update
    	@account = Account.find(params[:id])
    	if @account.update(account_params)
    		redirect_to account_path(@account)
    	else
    	    render :edit
    	end 
    end	

    def destroy
	    @account = Account.find(params[:id])
	    @account.destroy

	    redirect_to accounts_path
    end   	

    def account_params
       params.require(:account).permit(:supplier_id, :account_number )
    end   
 
end

