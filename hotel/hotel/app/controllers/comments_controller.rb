class CommentsController < ApplicationController
   def index
    @comments = Comment.all
  end

  def create
    @gotel = Gotel.find(params[:gotel_id])
    @comment = @gotel.comments.build(params[:comment])
    @comment.username = current_user.username
    if @comment.save
      redirect_to @gotel
    else
      redirect_to @gotel
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.gotel
  end
end
