class CategoriesController < ApplicationController
  def index
    if current_user
      @categories = current_user.categories
    else
      render 'application/index.html.erb'
    end
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

  def show
    @category = Category.find(params[:id])
    @links = @category.links
  end

private

  def category_params
    params.require(:category).permit(:name, :user_id)
  end

end
