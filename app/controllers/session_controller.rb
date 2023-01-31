class SessionController < ApplicationController
  before_action :check_for_session, :only => [:new]
  before_action :last_controller, :only => [:new]
  after_action :clear_logout, :only => [:destroy]

  def new
    unless @current_user.present?
      unless Rails.application.routes.recognize_path(session[:previous_url])[:controller] == "users"
        unless request.headers["HTTP_REFERER"].nil?
          session[:previous_url] = request.headers["HTTP_REFERER"]
        end
        if session[:previous_url]  == nil
          flash[:error] = nil
        end
        if last_controller == "session"
          session[:previous_url] = nil
        end
      end
    end
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id   
 
        unless session[:previous_url] == nil
          redirect_to session[:previous_url]
          session[:previous_url] = nil
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
    redirect_to root_path
  end

end