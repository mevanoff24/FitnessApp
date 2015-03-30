class CategoriesController < ApplicationController
  
  def index
  	@category = Category.find_by(params)
  end

end
