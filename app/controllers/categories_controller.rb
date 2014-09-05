class CategoriesController < ApplicationController
  def index
    @categories = []
    @categories = current_user.categories if current_user.categories
  end

  def new
    @category = Category.new
  end

  def create
    @user = current_user
    if current_user
      @category = @user.categories.new(category_params)
      if @category.save
        redirect_to categories_path
      else
        flash[:alert] = "Incomplete information, please try again"
        redirect_to :back
      end
    else
      flash[:alert] = "You must be logged in to do that"
      redirect_to login_path
    end
  end

private

  def category_params
    params.require(:category).permit(:name, :user_id)
  end

end
