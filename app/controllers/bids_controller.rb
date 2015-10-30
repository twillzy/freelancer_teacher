class BidsController < ActionController::Base
	layout "application.html.erb"
	before_action :fetch_current_user

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

  def fetch_current_user
    gon.api_id = $client_id
    gon.api_key = $client_key
    if session[:user_id].present?
      @current_user = User.find_by :id => session[:user_id]
      session[:user_id] = nil unless @current_user.present?
      gon.current_user = @current_user
    end
  end

end