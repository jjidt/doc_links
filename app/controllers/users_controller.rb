class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now.notice = "user created successfully"
      redirect_to :root
    else
      flash.now.alert = "incomplete information, please try again"
      redirect_to :back
    end
  end
end
