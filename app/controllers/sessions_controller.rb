class SessionsController < ApplicationController
  skip_before_action :require_login, :only=>[:create, :new]
  # GET /sessions/new
  def new
  end

  # POST /sessions
  def create
    user = User.authenticate params[:email], params[:password]
      if user
        session[:user_id] = user.id
        session[:admin] = user.admin
        session[:company_id] = user.company_id
        redirect_to users_path, :notice => "Welcome back to Truckers"
      else
        redirect_to login_path, :alert => "Invalid email or password"
      end
  end

  def destroy
    session[:user_id] = nil
    session[:admin] = nil
    session[:company_id] = nil
    redirect_to root_path :notice => "You have been logged out"
  end
end
