class UserMailer < ApplicationMailer
	default from: "xyz@example.com"

	def welcome_email
       @user = params[:user]
       @url = 'http://example.com/login'
       mail(to: @user.email, subject: 'Welcome to my Awesome site')
    end   
end


