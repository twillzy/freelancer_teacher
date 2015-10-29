class PagesController < ActionController::Base
  
  def index
  	if @current_user.nil?
  		@user = User.new
	  else
	  	redirect_to root_path
	  end
  end

end
