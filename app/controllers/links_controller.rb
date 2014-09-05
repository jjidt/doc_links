class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @category = Category.find(params[:category_id])
    @link = @category.links.new(link_params)
    if @link.save
      flash[:notice] = "link created"
      redirect_to category_path(@category)
    else
      flash[:alert] = "Incomplete information, please try again"
      redirect_to :back
    end
  end

private

  def link_params
    params.require(:link).permit(:url, :name, :category_id)
  end

end
