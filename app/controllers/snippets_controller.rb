class SnippetsController < ApplicationController

  def new
    @snippet = Snippet.new
  end

  def create
    @category = Category.find(params[:category_id])
    @snippet = @category.snippets.new(snippet_params)
    if @snippet.save
      flash[:notice] = "snippet created"
      redirect_to category_path(@category)
    else
      flash[:alert] = "Incomplete information, please try again"
      redirect_to :back
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @snippet = Snippet.find(params[:id])
  end

private

  def snippet_params
    params.require(:snippet).permit(:language, :description, :code)
  end

end
