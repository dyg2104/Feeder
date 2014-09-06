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

end
