class EventsController < ApplicationController
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
