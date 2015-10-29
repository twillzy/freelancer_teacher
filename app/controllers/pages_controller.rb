class PagesController < ActionController::Base
  
  def index
  	@user = User.new
  end

end
