class UsersController < ApplicationController
def edit
	@user = User.friendly.find(params[:id])
end
end