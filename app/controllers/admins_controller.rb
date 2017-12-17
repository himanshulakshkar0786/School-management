class AdminsController < ApplicationController

	def show
		@admin = Admin.find(params[:id])
	end

	def new
		@admin = Admin.new
	end

	def create
		@admin = Admin.new(prams[:admin])
		if @admin.save
			AdminMailer.signup_confirmation(@admin).deliver
			redirect_to @admin, notice: "Signed up successfully."
		else
			render 'new'
		end
	end
end