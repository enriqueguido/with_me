class EventsController < ApplicationController

  def index
    @events = Event.all
    if params[:search]
      @events = Event.search(params[:search]).order("created_at")
    else
      @events
    end
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show
  @event = Event.find(params[:id])
  end
end
