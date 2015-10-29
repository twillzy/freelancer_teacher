class ProjectsController < ApplicationController
	before_filter :authorize
	
	def index
		@crnt_projects = Project.where :user_id => @current_user.id
	end

	def show
		@project = Project.find_by :id => params[:id]
	end

	def new
		@project = Project.new
		gon.current_user = @current_user
		gon.api_id = $client_id
		gon.api_key = $client_key
	end

	def create
		require 'pry'
		# binding.pry
		@project = Project.new project_params
		if @project.save
			binding.pry
			render :new
		else
			binding.pry
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
