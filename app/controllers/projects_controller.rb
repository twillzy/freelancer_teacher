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
	end

	def create
	end

end
