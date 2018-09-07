class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.game_id = params[:game_id]

    @comment.save

    redirect_to game_path(@comment.game)
  end

  private

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

end
