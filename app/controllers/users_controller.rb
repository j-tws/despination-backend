class UsersController < ApplicationController

  # to authenticate the user which will ensure only logged in users are able to access these methods
  before_action :authenticate_user 

  def current
    render json: current_user, include: [:planners => {include: [:attractions, :events] }]
    # NOTE!! - Knock uses current_user NOT @current_user as we have used previously in a sessions controller. Ensure your code is typed as below.
  end

# ===========================================================================

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
    @user = User.find params[:id]

    render json: @user, include: [:planners => {include: [:attractions, :events] }]
  end

  def edit
    # Not needed
  end

  def update
    # Not needed
  end

  def destroy
  end


 
end
