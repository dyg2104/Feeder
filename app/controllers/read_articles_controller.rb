class ReadArticlesController < ApplicationController
  def update
    @article = Article.find_by_id(params[:id])

    if current_user
      read_article = ReadArticle.where("user_id = ? AND article_id = ?",
                                       current_user.id,
                                       @article.id).first
      if read_article
        read_article.change_status!
        render json: {success: true}
      else
        render json: {success: false}
      end
    end
  end
end
