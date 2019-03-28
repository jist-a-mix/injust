class CategoriesController < ApplicationController
	def index
		@categories =Category.all
	end
	def show
		@category =Category.friendly_id.find(params[:id])

		
		@category.posts = @category.posts.sort_by(&:created_at)
		 
		 @categories = Kaminari.paginate_array(@category.posts).page(params[:page]).per(8)

		

	end
end
