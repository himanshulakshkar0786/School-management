class ClassnamesController < ApplicationController
	
	def index
		@classnames = Classname.all
	end
	
	def new
		@classname = Classname.new
	end

	def create
		@classname = Classname.new(classname_params)
		if @classname.save
			redirect_to @classname
		else
			render "new"
		end
	end

	def show
		@classname = Classname.find(params[:id])
	end

	def edit
		@classname = Classname.find(params[:id])
	end

	def update
    	@classname = Classname.find(params[:id])
    	if @classname.update(classname_params)
      		redirect_to @classname
    	else
      		render 'edit'
    	end
  	end

  	def destroy
    	@classname = Classname.find(params[:id])
    	@classname.destroy
 
    	redirect_to classnames_path
  	end

  	private

  	def classname_params
  		params.require(:classname).permit(:name)
  	end
end
