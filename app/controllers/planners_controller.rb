class PlannersController < ApplicationController

    skip_before_action :verify_authenticity_token, raise: false
    before_action :authenticate_user

  def new
    @planner = Planner.new
  end

  def create
 

  end

  def index
    @planners = Planner.all

    render json: @planners, include: [:events, :attractions => {:include => :events}]
  end

  def show
    @planner = Planner.find params[:id]

    # @planner.attractions << attractions: params[:attraction]

    render json: @planner, include: [:events, :attractions => {:include => :events}]
  end

  def edit
    @planner = Planner.find params[:id]

  end

  def update
    @planner = Planner.find params[:id]

  end

  def destroy
    @planner = Planner.find params[:id]

  end

  def add_attraction
    planner = Planner.find params[:planner_id]
    attraction = Attraction.find params[:attraction_id]

    # Make sure this planner belongs to the user

    if planner.attractions.include? attraction
      # planner already has this attraction 
      render json: {error: 'Attraction is already in planner'}, status: 422
    else
      planner.attractions << attraction
      render json: {response: 'Attraction added'}
    end

  end



end
