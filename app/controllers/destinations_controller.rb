class DestinationsController < ApplicationController
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

def destination_params
  params.require(:destination).permit(:name, user_id, :dish_id)

end
