class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "user created successfully"
      redirect_to :root
    else
      flash[:alert] = "incomplete information, please try again"
      redirect_to :back
    end
  end


private

def user_params
  params.require(:user).permit(:name, :password, :password_cofirmation)
end

end
