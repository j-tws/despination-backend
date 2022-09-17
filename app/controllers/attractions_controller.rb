class AttractionsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @attractions = Attraction.all

    render json: @attractions, include: [:events]
  end

  def show
    @attraction = Attraction.find params[:id]

    render json: @attraction, include: [:events]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
