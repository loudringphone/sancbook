class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  before_action :check_for_login, :only => [:show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      unless session[:previous_url] == nil
        redirect_to session[:previous_url]
        session[:previous_url] = nil
      else
        redirect_to root_path
      end
    else
      password_errors = @user.errors.messages[:password]
      if password_errors.present?
        if password_errors.include? "must not be blank"
          password_errors.delete_at(password_errors.index("must not be blank"))
        end
      end
      render :new
    end
  end

  def show
    if User.find_by(id: params[:id]).nil?
      params[:id] = User.find_by(username: params[:id]).id
    end

    user = User.find_by(id: params[:id])
    @user_sanctions = user.sanctions.order(:name)
    @user_sanction_nations = @user_sanctions.select(:nationality).map(&:nationality).uniq.sort!
    user_favourites_by_id = user.favourites
    @user_favourites = []
    user_favourites_by_id.each do |id|
      @user_favourites.push Sanction.find_by(id: id.sanction_id)
    end

    @user_favourite_nations = []
    @user_favourites.each do |favourite|
      unless @user_favourite_nations.include? favourite.nationality
        @user_favourite_nations.push favourite.nationality
      end
    end

    @user_favourites = @user_favourites.sort_by { |f| [f.name] }
    @user_favourite_nations.sort!

  end
    

  def edit
    @user = User.find_by(id: params[:id])
    if @user.nil?
      @user = User.find_by(username: params[:id])
    end
    flash[:error] = "Invalid password"
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.nil?
      @user = User.find_by(username: params[:id])
    end
    @user.assign_attributes user_params
    
    if @user.save
      flash[:notice] = "Your password has been successfully changed."
      redirect_to "/users/#{@user.username}"
    else
      username_errors = @user.errors.messages[:username]
      if username_errors.present?
        if username_errors.include? "has already been taken"
          username_errors.delete_at(username_errors.index("has already been taken"))
        end
      end

      render :edit
    end
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    admin_profile = '/users/' + @current_user.id.to_s
    redirect_to admin_profile
  end


  

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
