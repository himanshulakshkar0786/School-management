class TeachersController < ApplicationController
	def index
		@search = Teacher.search(params[:q])
		@teachers = @search.result
		@search.build_condition
	end
	
	def new
		@teacher = Teacher.new
	end
	
	def create
		@teacher = Teacher.new(teacher_params)
		if @teacher.save
			redirect_to @teacher
		else
			render "new"
		end
	end

	def show
		@teacher = Teacher.find(params[:id])
	end

	def edit
		@teacher = Teacher.find(params[:id])
	end

	def update
		@teacher =  Teacher.find(params[:id])
		if @teacher.update(teacher_params)
			redirect_to @teacher
		else
			render "edit"
		end
	end

	def destroy
		@teacher = Teacher.find(params[:id])
		@teacher.destroy

		redirect_to teachers_path
	end

	private

	def teacher_params
		params.require(:teacher).permit(:name, :email, :phone_number, :subject, :classname_id)
	end
end