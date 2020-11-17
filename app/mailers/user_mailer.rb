class UserMailer < ApplicationMailer
	default from: 'hamlo.9x.hn@gmail.com'

	def welcome_email user
		@user = user
		@url  = 'http://localhost:3000/signin'
		mail(to: @user.email, subject: 'Welcome to My Awesome Site')
	end
	def hello user
			@user = user
			mail to: @user.email,subject: "Hello"
	end		

end
