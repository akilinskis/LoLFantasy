class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:session][:username], params[:session][:password])
    if user
      log_in user
      redirect_to root_path
    else
      flash[:error] = 'Invalid username/password combination'
      redirect_to login_path
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end