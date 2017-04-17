class CommentsController < ApplicationController

    def new

    end

    def create
      @event = Event.find(params[:event_id])
      Comment.create(user: current_user, event: @event, body: comment_params[:body])
    #   @comment = @event.comments.create(comment_params)
      redirect_to event_path(@event)
    end

     def destroy
       @event = Event.find(params[:event_id])
       @comment = @event.comments.find(params[:id])
       @comment.destroy
       redirect_to event_info_path(@event)
     end

     def edit
         @event = Event.find(params[:event_id])
         @comment = @event.comments.find(params[:id])
     end

     def update
        @event = Event.find(params[:event_id])
        @comment = @event.comments.find(params[:id])
        if @comment.update(comment_params)
            redirect_to event_info_path(@event)
        else
            render 'edit'
        end
     end

     private
       def comment_params
         params.require(:comment).permit(:user_id, :body, :event_id)
       end
end
