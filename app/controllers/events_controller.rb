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
    @user = current_user
    # @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.new(event_params)
    # @event = Event.create
    #   respond_to do |format|
    #   if @event.save
    #     format.html { redirect_to @event, notice: 'Event was successfully created.' }
    #     format.json { render :show, status: :created, location: @event }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @event.errors, status: :unprocessable_entity }
    #   end
    # end
    # @event.save
    # @event = Event.new(event_params)
    if @event.save
     redirect_to @event, notice: "Your event is created!"
    else
     render action: 'new'
    end
  end

  def edit
     @comment = Comment.find(params[:id])
     @comment = Comment.update(:comment)
  end

  def update
    # respond_to do |format|
    #   if @event.update(user_params)
    #     format.html { redirect_to @event, notice: 'User was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @event }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @event.errors, status: :unprocessable_entity }
    #   end
    # end
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

private

  def event_params
    params.require(:event).permit(:name, :description, :image, :start, :end)
  end
#
#   def api
#     api_call
#   end
end
