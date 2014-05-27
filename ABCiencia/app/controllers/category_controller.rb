class CategoryController < ApplicationController

	def create_category
		Category.create!(:nombre => params[:categoria])
		render :template => 'home/admin_panel'	
	end

	def erase_category
		categoria = Category.find(params[:categoria])
		categoria.articles.destroy_all
		categoria.delete
		render :template => 'home/admin_panel'
	end

end
