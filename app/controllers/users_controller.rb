class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  before_action :check_for_login, :only => [:profile]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id # log in the newly created user
      redirect_to root_path # TODO: send the user to a better page
    else
      render :new
    end
  end

  def profile
    sanctions = Sanction.all
    @favourites = []
    sanctions.each do |sanction|
      sanction.favourites.each do |favourite|
        if favourite.user_id == params[:id].to_i
          @favourites.push sanction.id
        end
      end
    end
    @favourites
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
