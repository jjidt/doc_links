class CategoriesController < ApplicationController
  def index
    @categories = []
    @categories = current_user.categories if current_user.categories

  end




end
