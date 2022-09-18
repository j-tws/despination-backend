class EventsController < ApplicationController

    skip_before_action :verify_authenticity_token, raise: false

  def new
    @events = Events.all
  end

  def create
    @event = Event.new
  end

  def index
    @events = Event.all
    render json: @events, include: [:destination, :attraction => {:include => :events}]
  end

  def show
    @event = Event.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
