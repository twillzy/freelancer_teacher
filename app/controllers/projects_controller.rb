class ProjectsController < ApplicationController
	before_filter :authorize
	
	def index
	end

	def new
		@project = Project.new
	end

	def create
	end

end
