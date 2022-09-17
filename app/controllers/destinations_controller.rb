class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end

  def create
    Destination.create destination_params
  end

  def index
    @destination = Destination.all
  end

  def show
    @destination = Destination.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
