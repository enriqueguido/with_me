class CommentsController < ApplicationController

    def new

    end

    def create
      @event = Event.find(params[:event_id])
      @comment = @event.comments.create(comment_params)
      redirect_to event_path(@event)
    end

     def destroy
       @event = Event.find(params[:id])
       @comment = @event.comment.find(params[:id])
       @comment.destroy
       redirect_to event_path(@event)
     end

     private
       def comment_params
         params.require(:comment).permit(:commenter, :body, :event_id)
       end

end
