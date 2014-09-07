class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_user
  helper_method :unescape_html

  private
  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def login!(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_signed_out
    redirect_to root_url unless current_user.nil?
  end

  def require_signed_in
    redirect_to new_session_url if current_user.nil?
  end
  
  def unescape_html(str)
    coder = HTMLEntities.new
    coder.decode(str).html_safe
  end

  def update_feeds!(user)
    feeds = user.feeds

    feeds.each do |f|
      f.update_feed
    end

    feeds = user.feeds.includes(:articles).where("published_at > ?", DateTime.now.ago(604800)).references(:articles)
    user_article_ids = user.all_read_article_relationships.pluck(:article_id)

    feeds.each do |feed|
      feed.articles.each do |a|
        unless user_article_ids.include?(a.id)
          ReadArticle.create!({
            user_id: user.id,
            article_id: a.id
          })
        end
      end
    end
  end

  def remove_users_feed!(feed, user)
    feed_article_ids = Article.where("feed_id = ?", feed.id).pluck(:id)
    users_article_relationships = user.all_read_article_relationships

    users_article_relationships.each do |relationship|
      if feed_article_ids.include?(relationship.article_id)
        relationship.destroy
      end
    end
  end

end
