class ProjectsController < ApplicationController
	before_filter :authorize
	
	def index
	end

	def new
		@project = Project.new
		gon.current_user = @current_user

		raise 'hell'
	end

	def create
	end

end
