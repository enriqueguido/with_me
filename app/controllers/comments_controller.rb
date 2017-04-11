class CommentsController < ApplicationController

    def create
       @event = Event.find(params[:post_id])
       @comment = @event.comments.create(params[:comment])
       redirect_to post_path(@event)
     end

     def destroy
       @event = Event.find(params[:post_id])
       @comment = @event.comments.find(params[:id])
       @comment.destroy
       redirect_to post_path(@event)
     end

end
