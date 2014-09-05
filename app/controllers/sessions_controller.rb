class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash.now.notice = "You have successfully logged in"
      redirect_to categories_path
    else
      flash.now.alert = "Incorrect information, please try again"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash.now.notice = "You have logged out"
    redirect_to :root
  end

end
