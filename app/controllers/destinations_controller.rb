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

    render json: @destination, include: [:events, :attractions => {:include => :events}]
  end

  def edit
  end

  def update
  end

  def destroy
  end

private


end
