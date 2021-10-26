class ApplicationController < ActionController::Base

  # before_action :require_login

  # private

  # def require_login
  #   if session[:user_id]==nil
  #     flash[:error] = "You must be logged in to access this section"
  #     redirect_to login_path, :alert => "Invalid email or password"
  #   end
  # end
  before_action :require_login
  # before_filter :authorize

private

  def require_login
    unless session[:user_id]
      redirect_to login_path
    end
  end
  
end
