class HomeController < ApplicationController
  def index

  end

  def category

  		@category = Category.find_by_nombre(params[:category])
  		@articles_for_category = @category.articles if @category
  		render :template => "home/404" unless ( !@category.nil? or !@articles_for_category.nil? )
  	end
 def info

 end

 def about

 end

 def licencia

 end

 def contacto

 end

end

