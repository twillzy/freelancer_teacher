class PagesController < ActionController::Base
  
  def index
  	# if @current_user.nil?
  	# 	@user = User.new
	  # else
	  # 	redirect_to projects_path
	  # end
	  if @current_user.present?
	  	redirect_to projects_path
	  else
	  	@user = User.new
	  end

  end

end
