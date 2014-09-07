class Api::UsersController < ApplicationController
  def show
    if current_user
      @user = User.includes(:categories, :feeds, :unread_articles => :comments).find(params[:id])
    
      @categories = @user.categories
      @feeds = @user.feeds
      @articles = @user.unread_articles
    
      render "show"
    else
      render json: {success: false}
    end
  end
end
