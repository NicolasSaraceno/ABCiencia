class ArticleController < ApplicationController

	def create_article
		Article.create!(:autor => params[:autor], :cuerpo => params[:cuerpo], :article => params[:titulo], :category => Category.find(params[:categoria]))
		render :template => 'home/admin_panel'			 
	end

	def erase_article
		Article.find(params[:articulo]).delete
		render :template => 'home/admin_panel'
	end

end
