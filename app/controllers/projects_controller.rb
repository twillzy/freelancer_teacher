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
	end

	def update
	end

	def edit
	end

end
