class HomeController < ApplicationController
	
	def index
		@user = current_user
		@posts =Post.all
		 @categories = Category.all
		 @users =User.all
		 @comments = Comment.all
	end
	def cgu
	end
	
end
