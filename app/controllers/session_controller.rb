class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path # IRL: send them somewhere better
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end      
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
