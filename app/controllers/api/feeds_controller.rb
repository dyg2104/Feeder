class Api::FeedsController < ApplicationController
  def show
    @feed = Feed.includes(:articles => [:comments => :user]).find(params[:id])
    
    if current_user
      @user_has_feed = current_user.feeds.pluck(:id).include?(@feed.id)
    else
      @user_has_feed = false
    end
    
    render "show"
  end
end
