class SessionController < ApplicationController
  def new
    unless @current_user.present?
      $location = request.headers["HTTP_REFERER"]
    end
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      if (!user.favourites.find_by(title: 'temp').present? && !user.admin?)
        temp_fav = Favourite.new
        temp_fav.title = 'temp'
        user.favourites << temp_fav
        temp_fav.save
        user.save
      end
      redirect_to $location
      $location = ""
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