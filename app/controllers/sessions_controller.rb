class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:new, :create]
  
  def new
    user = User.find_by(email: params[:email])
    if user and user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def create
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end
end
