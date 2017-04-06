class EventsController < ApplicationController
  def new
      @event = Event.new
  end

  def create
      @event = Event.create
  end

  def update
  end

  def destroy
  end

  def show

  @event = Event.find(params[:id])
  end
end
