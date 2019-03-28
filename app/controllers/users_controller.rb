
class UsersController < ApplicationController
	before_action :authenticate_user!
def edit
	if current_user.admin?
	@user = User.friendly.find(params[:id])
else 
	redirect_to root_path
end
end
 def update
    
      @user = User.friendly.find(params[:id])
      if @user.update(users_params)
        flash[:success] = 'user mis a jour '
redirect_to admin_path(@user)
  end
end
 def destroy
    @user=User.friendly.find(params[:id])
     flash.notice="profil '#{@user.username}'effacé"
    @user.destroy

   

    redirect_to root_path

end
private
def users_params
	params.require(:user).permit(  :username, :city, :email)
end
end