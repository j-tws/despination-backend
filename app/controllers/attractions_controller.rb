class AttractionsController < ApplicationController

 
    skip_before_action :verify_authenticity_token, raise: false

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
