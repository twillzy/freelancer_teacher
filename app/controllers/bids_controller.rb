class BidsController < ActionController::Base
	layout "application.html.erb"

	def show
		@bider = Bid.where :id => params[:id]
		@project = Project.where :id => @bider.first.project_id
	end

	def create
		@bid = Bid.new bid_params
		if @bid.save
			redirect_to projects_path
		else
			render :new
		end
	end


	private
	def bid_params
		params.require(:bid).permit(:bidder_id, :bid_amount, :name, :location, :skills, :profile, :proposal, :project_id, :avatar)
	end
end