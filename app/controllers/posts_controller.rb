class PostsController < ApplicationController
	before_action :authenticate_user!, :except => [:show, :index]
	def index
		@posts =Post.friendly.all
		 @categories = Category.all
	end
	def new
		@post =Post.new
    @user = current_user
    @categories =Category.all
	end

	
   def create
@user_id = current_user.id
    @post = Post.new(posts_params)
    @post.user = current_user
    if @post.save
      redirect_to root_path
      flash[:notice] = "injustice enregistree"
    else
      redirect_to root_path
      flash[:alert] = "injustice non enregistrée"
    end
  end
def show
  
    
    
@post = Post.friendly.find(params[:id])
    
        @user = @post.user
      
    
    

	

end
 private
def posts_params
    params.require(:post).permit(:title, :body,  :category_id, :created_at, :user_id)
  end
end
