class UsersController < ApplicationController

  # to authenticate the user which will ensure only logged in users are able to access these methods
  # before_action :authenticate_user # knock to check, check if logged
  # skip_before_action :verify_authenticity_token, raise: false  # raise: false means do not raise an error

  def current
    render json: current_user, include: [:planners => {include: [:attractions, :events] }]
    # NOTE!! - Knock uses current_user NOT @current_user as we have used previously in a sessions controller. Ensure your code is typed as below.
  end

# ===========================================================================

  def new
    @user = User.new
  end

  def create
    @user = User.create!(
      name: params['user']['name'],
      email: params['user']['email'],
      password: params['user']['password']
    )

    if @user.persisted? # has user account created sucessful?
      render json: user # send the create user object as JSON response
      session[:user_id] = @user.id #LOGIN automatically // create a knock toekn
    else
      render json: {error: 'Could not create user account'}, status: 422
      # 422 is "unprocessable entity", ie force an HTTP error code
    end

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

