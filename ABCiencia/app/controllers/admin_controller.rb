class AdminController < ApplicationController

	def login
		@admin = Admin.last
		@admin.login!(params[:password], params[:nombre])
		if @admin.check_login
			render :template => 'home/admin_panel'		
		else
			render :template => 'home/500'
		end
	end

	def logout
 		if Admin.last.update! :login => false
 			redirect_to '/' 
		else
  			render :template => 'home/500'
		end
 	end
end
