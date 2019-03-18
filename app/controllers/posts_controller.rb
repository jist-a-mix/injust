class PostsController < ApplicationController
	before_action :authenticate_user!, :except => [:show, :index]
	def index
		@posts =Post.page(params[:page]).per(3)
		 @categories=Category.all
     
	end
	def new
		@post =Post.new
    @user = current_user
    @categories =Category.all
	end

	
   def create
@user_id = current_user.id
@category = params[:category_id]
    @post = Post.new(posts_params)
    @post.user = current_user
    @post.category_id = @category.to_i 
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
@category = Category.find(@post.category_id)


    
        @user = @post.user
      
    
    

	

end

 private
def posts_params
    params.require(:post).permit(:title, :body,  :category_id, :created_at, :user_id)
  end
  def category_params
    params.require(:Category)
end
end
