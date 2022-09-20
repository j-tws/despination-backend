class UsersController < ApplicationController

  # to authenticate the user which will ensure only logged in users are able to access these methods
  before_action :authenticate_user, except: [:create] # knock to check, check if logged
  skip_before_action :verify_authenticity_token, raise: false  # raise: false means do not raise an error

  def current
    render json: current_user, include: [:planners => {include: [:attractions, :events] }]
    # NOTE!! - Knock uses current_user NOT @current_user as we have used previously in a sessions controller. Ensure your code is typed as below.
  end

# ===========================================================================

  def new
    @user = User.new
  end

  

  def create
    
    # # check if an email exist? 
    # # going through params and objects to look for a user email
    email_exists = User.find_by email: params['user']['email'].downcase
    
    if email_exists # check if the user's email is in DB
      render json: {error: 'Email has already taken'}, status: 409
    else 
      user = User.create!(
      name: params['user']['name'],
      email: params['user']['email'].downcase,
      password: params['user']['password'],
    )
      render json: user # send the create user object as JSON response
    end
  
    # render json - send message 
    

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

