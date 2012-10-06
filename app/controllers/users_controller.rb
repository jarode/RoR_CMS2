class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
	# private data only for owner
	@owner = current_user == @user || current_user.has_role?(:admin)
	
  end
end
