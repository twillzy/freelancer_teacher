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
	end

end
