class CommentsController < ApplicationController
  def create
    if current_user
      comment = current_user.comments.new
      comment.article_id = comment_params[:article_id]
      comment.body = comment_params[:body]

      if comment.save
        render json: {success: true}
      else
        render json: {success: false}
      end
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:article_id, :body)
  end
end
