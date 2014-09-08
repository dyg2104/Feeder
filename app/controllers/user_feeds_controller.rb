class UserFeedsController < ApplicationController
  def update
    if current_user
      user_feed = UserFeed.where("user_id = ? AND feed_id = ?",
                                  current_user.id,
                                  params[:id]).first
      if user_feed
        user_feed.destroy
        feed = Feed.find(params[:id])
        remove_users_feed!(feed, current_user)
        render json: {success: true}
      else
        user_feed = UserFeed.new
        user_feed.user_id = current_user.id
        user_feed.feed_id = params[:id]

        if user_feed.save
          feed = Feed.find(params[:id])
          update_feed!(current_user, feed)
          render json: {success: true}
        else
          render json: {success: false}
        end
      end
    end

  end
end
