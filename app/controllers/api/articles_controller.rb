class Api::ArticlesController < ApplicationController
  def showSaved
    if current_user
      @savedArticles = current_user.saved_articles
      render "showSaved"
    end
  end
end
