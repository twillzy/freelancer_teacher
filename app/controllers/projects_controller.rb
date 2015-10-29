class ProjectsController < ApplicationController
	before_filter :authorize
	
	def index
	end

	def new
		@project = Project.new
		gon.current_user = @current_user
		gon.api_id = $client_id
		gon.api_key = $client_key
	end

	def create
		@project = Project.new project_params
		if @project.save
			redirect_to root_path
		else
			render :new
		end
	end

	def update
		@project = Project.find params[:id]
		@project.update project_params
		if @project.save
			redirect_to root_path
		else
			render :edit
		end
	end

	def edit
		@project = Project.find params[:id]
	end

	private
	def project_params
		params.require(:project).permit(:title, :description, :currency, :budget, :jobs)
	end
end
