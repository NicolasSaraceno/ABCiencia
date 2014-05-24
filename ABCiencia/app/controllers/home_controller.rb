class HomeController < ApplicationController
  def index

  end

  def category

  		@category = Category.find_by_nombre(params[:category])
  		@articles_for_category = @category.articles
  	end
end

