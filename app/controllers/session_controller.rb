class SessionController < ApplicationController
  before_action :check_for_session, :only => [:new]
  def new
    unless @current_user.present?
      $location = request.headers["HTTP_REFERER"]
    end
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      unless $locaiton.nil?
        redirect_to $location
        $location = ""
      else
        redirect_to root_path
      end
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end      
  end

  def destroy
    session[:user_id] = nil
    redirect_back fallback_location: root_path
  end

end