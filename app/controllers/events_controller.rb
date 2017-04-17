class EventsController < ApplicationController
# before_action :api_call, only: [:index]

  def index
    @events = Event.all
    if params[:search]
      @events = Event.search(params[:search]).order("created_at")
    else
      @events
    end
  end

  def new
      @event = Event.new
  end

  def create
      @event = Event.create
  end

  def edit
     @comment = Comment.find(params[:id])
     @comment = Comment.update(:comment)
  end

  def update
  end

  def destroy
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_info
      @event = Event.find(params[:id])
  end

  # def attend
  #   @event = Event.find(params[:id])
  #   @event.users.new(user_id: current_user)
  #   @event.save!
  # end

# private
#
#   def api
#     api_call
#   end
end
