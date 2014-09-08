class Api::CommentsController < ApplicationController
  def index
    article = Article.includes(:comments).find(comment_params[:article_id])
    @comments = article.comments
    render "index"
  end
  
  private
  def comment_params
    params.require(:comment).permit(:article_id)
  end
end
