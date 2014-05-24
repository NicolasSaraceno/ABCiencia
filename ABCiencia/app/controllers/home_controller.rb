class HomeController < ApplicationController
  def index

  end

  def category

  		@category = Category.find_by_nombre(params[:category])

  end

end
