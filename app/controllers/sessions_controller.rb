class SessionsController < ApplicationController
  def create
    session[:password]=params[:password]
    flash[:notice]="Succesfully logged in"
    redirect_to Category.find(1)
  end
  
  def new
  end
  
  def destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    redirect_to Category.find(1)
  end
end
