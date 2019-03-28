class AdminsController < ApplicationController
	before_action :authenticate_user!
	def index
		if current_user.admin?
		@users = User.all
		@categorie = Category.all
	else
		redirect_to root_path
	end
	end
		def show
			if current_user.admin?
			@user = User.friendly.find(params[:id])
			else
		redirect_to root_path
	end
		end
end
