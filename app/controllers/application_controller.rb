class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_current_user

  def authorize
    redirect_to '/login' unless @current_user
  end

  private
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
