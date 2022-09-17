class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
  end

  def index
    # Dont need to show all users on the app thus not needed
  end

  def show
    # Dont need to show user profile because each users can access planners. thoughts?
  end

  def edit
    # Not needed
  end

  def update
    # Not needed
  end

  def destroy
  end


  private
  # strong params to increase the security of data sent through forms.
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

end
