class AttractionsController < ApplicationController

 
    skip_before_action :verify_authenticity_token, raise: false

  def add_likes
   
    @attraction = Attraction.find params[:attraction_id]
    @current_user = User.find params[:user_id]

  
    unless @attraction.users.include?(@current_user)
      @attraction.users << @current_user
    else 
      @attraction.users.delete(@current_user)
    end

    render json: @attraction, include: [:users]
 
  end 

  def new
  end

  def create
  end

  def index
    @attractions = Attraction.all

    render json: @attractions, include: [:events, :users]
  end

  def show
    @attraction = Attraction.find params[:id]

    render json: @attraction, include: [:events, :users]

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
