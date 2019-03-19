class CategoriesController < ApplicationController
	def index
		@categories =Category.all
	end
	def show
		@category =Category.friendly_id.find(params[:id])

		
		
		 
		 @categories = Kaminari.paginate_array(@category.posts).page(params[:page]).per(1)

		

	end
end
