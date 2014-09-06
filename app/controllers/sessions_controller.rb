class SessionsController < ApplicationController
  before_action :require_signed_out, only: [:create, :new]
  before_action :require_signed_in, only: [:destroy]

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if user.nil?
      flash.now[:errors] = ["Username and/or password are incorrect"]
      render :new
    else
      login!(user)
      # update_feeds!(user)
      redirect_to root_url
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end
end
