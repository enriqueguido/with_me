class CommentsController < ApplicationController

    def new

    end

    def create
      @event = Event.find(params[:event_id])
      @comment = @event.comments.create(comment_params)
      redirect_to event_path(@event)
    end

     def destroy
       @comment.destroy
       redirect_to event_path(@event)
     end

     def edit
         @event = Event.find(params[:event_id])
         @comment = @event.comments.create(params[:comment])
     end

     def update(comment_params)
         @event = Event.find(params[:id])
     end

     private
       def comment_params
         params.require(:comment).permit(:commenter, :body, :event_id)
       end
end
