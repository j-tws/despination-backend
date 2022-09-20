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

  # method for add_attraction
  def add_attraction
    planner = Planner.find params[:planner_id]
    attraction = Attraction.find params[:attraction_id]

    # Make sure this planner belongs to the user

    if planner.attractions.include? attraction
      # planner already has this attraction 
      render json: {error: 'Attraction is already in planner'}, status: 422
    else
      planner.attractions << attraction
      render json: {response: 'Attraction sucessfully added'}
    end # if else

  end # add_attraction

  # method for remove_attraction
  def remove_attraction
    planner = Planner.find params[:planner_id]
    attraction = Attraction.find params[:attraction_id]

    # Make sure this planner belongs to the user

    if planner.attractions.include? attraction

      planner.attractions.delete attraction

      render json: {response: 'Attraction sucessfully removed'}
    else

      render json: {error: 'Attraction does not exist in planner'}, status: 422
    end # if else

  end # remove_attraction
  
  # method for add_event
  def add_event

    planner = Planner.find params[:planner_id]
    event = Event.find params[:event_id]

    # Make sure this planner belongs to the user

    if planner.events.include? event
      # planner already has this attraction 
      render json: {error: 'Event is already in planner'}, status: 422
    else
      planner.events << event
      render json: {response: 'Event sucessfully added'}
    end # if else

  end

  # method for remove_event
  def remove_event

    render json: current_user
  end


end
