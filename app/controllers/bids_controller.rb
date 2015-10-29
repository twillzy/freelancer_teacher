class BidsController < ActionController::Base

	def show
		@bider = Bid.where :id => params[:id]
		@project = Project.where :id => @bider.first.project_id
	end

end