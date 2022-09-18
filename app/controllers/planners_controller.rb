class PlannersController < ApplicationController

    skip_before_action :verify_authenticity_token, raise: false
 
  def new
    @planner = Planner.new
  end

  def create
    @planner = Planner.create 

  end

  def index
    @planners = Planner.all

    render json: @planners, include: [:events, :attractions => {:include => :events}]
  end

  def show
    @planner = Planner.find params[:id]
    render json: @planner, include: [:events, :attractions => {:include => :events}]
  end

  def edit
    @planner = Planner.find params[:id]

  end

  def update
    @planner = Planner.find.params[:id]

  end

  def destroy
    @planner = Planner.find.params[:id]

  end

end
