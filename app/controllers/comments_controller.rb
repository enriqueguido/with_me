class CommentsController < ApplicationController
  def new
      @comment = Comment.new(params[:comment])

      if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      redirect_to(@event)
    else
      flash[:notice] = "Error creating comment: #{@comment.errors}"
      redirect_to(@event)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to(@event)
  end
end
  end

  def create
  end

  def update
  end

  def destroy
  end
end
