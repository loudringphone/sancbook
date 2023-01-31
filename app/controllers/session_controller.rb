class SessionController < ApplicationController
  before_action :check_for_session, :only => [:new]
  before_action :last_controller, :only => [:new]
  after_action :clear_logout, :only => [:destroy]

  def new
    unless @current_user.present?
      unless Rails.application.routes.recognize_path($location)[:controller] == "users"
        unless request.headers["HTTP_REFERER"].nil?
          $location = request.headers["HTTP_REFERER"]
        end
        if $location  == root_url
          flash[:error] = nil
        end
        if last_controller == "session"
          $location = root_path
        end
      end
    end
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id   
      begin
        redirect_to $location
        $location = root_path
      rescue
        redirect_to root_path
      end
    
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end      
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end