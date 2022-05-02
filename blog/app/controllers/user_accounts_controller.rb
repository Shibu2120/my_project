class UserAccountsController < ApplicationController
	def index
		@user_accounts = UserAccount.all
	end	

	def show
		@user_account = UserAccount.find(params[:id])
	end	

	def new
		@user_account = UserAccount.new
	end	

	def edit
	    @user_account = UserAccount.find(params[:id])
    end
     
	def create
		@user_account = UserAccount.new(user_account_params)
       
		if @user_account.save
			redirect_to user_account_path(@user_account)
		else
		    render :new
        end
    end 

    def update
       @user_account = UserAccount.find(params[:id]) 

       if @user_account.update(user_account_params)
       	    redirect_to user_account_path(@user_account)
       else
            render :edit
       end 
    end    

    def destroy
    	@user_account = UserAccount.find(params[:id])
    	@user_account.destroy

    	redirect_to user_accounts_path
    end	

    private
	def user_account_params
		params.require(:user_account).permit(:name, :contact, :email)
    end   	    

end
