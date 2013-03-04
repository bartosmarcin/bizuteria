class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :admin?
  
  protected 
  
  def authorize
    unless admin?
      flash[:error] = "Unauthorized access"
      redirect_to home_path
      false
    end
  end
  
  def admin?
    session[:password] == "admin"
  end
end
