class AdminMailer < ApplicationMailer

	default from: "himanshulakshkar0786@gmail.com"

	def signup_confirmation(admin)
    	@admin = admin

    	mail to: admin.email, subject: "Sign Up Confirmation"
  end
end
