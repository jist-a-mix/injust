class SlugsController < ApplicationController


  def show
  	normalize_user_input

    @slug = FriendlyId::Slug.find_by(slug: @slug_params)
    if @slug
      render_view
    else
      raise ActiveRecord::RecordNotFound, notice: "This page does not exist"
    end
  end

  private
  
  #def slug_params
    #@slug_params ||= params[:id]
  #end
def normalize_user_input
  # strips everything but letter, number, _ and -
@slug_params ||= params[:id].gsub(/[^\w-]/, '')
end
  def render_view
    case @slug.sluggable_type
    when "Post"
      @post = Post.friendly.find(@slug_params)
      render 'posts/show'
    when "User"
      @user = User.friendly.find(@slug_params)
      render 'devise/users/show'
    when "Category"
      @user = Category.friendly.find(@slug_params)
      render 'categories/show'
    else raise ActiveRecord::RecordNotFound
    end
  end
end

