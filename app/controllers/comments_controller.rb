class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @comment.article
    else 
      redirect_to @comment.article
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end
end
