class DestinationsController < ApplicationController

   
    skip_before_action :verify_authenticity_token, raise: false

  def new
    @destination = Destination.new
  end

  def create
    Destination.create destination_params
  end

  def index
    @destinations = Destination.all

    render json: @destinations, include: [:events, :attractions => {:include => :events}]
  end

  def show
    @destination = Destination.find params[:id]
    @users = User.all

    @attraction_categories = @destination.attractions.includes(:category).group_by { |att| att.category.name }

    render json: {
      destination: @destination.as_json( include: [:events, :attractions => {:include => :events}]),
      attraction_categories: @attraction_categories
    }

  end

  def edit
  end

  def update
  end

  def destroy
  end

  # For ReactMap
  def get_locations
    render json: Destination.all
  end

private


end
