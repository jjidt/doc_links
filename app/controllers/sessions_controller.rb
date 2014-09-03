class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash.now.notice = "You have successfully logged in"
      redirect_to :root
    else
      flash.now.alert = "Incorrect information, please try again"
      render :new
    end
  end

  def destroy

  end

end
