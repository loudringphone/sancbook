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

    unless (params[:id].to_i > 0)
      if User.find_by(username: params[:id]).nil?
        redirect_to root_path
        return
      else
        params[:id] = User.find_by(username: params[:id]).id
      end
    end






    user = User.find_by(id: params[:id])
    @user_sanctions = user.sanctions.order(:name)
    @user_sanction_nations = @user_sanctions.select(:nationality).map(&:nationality).uniq.sort!
    # raise 's'
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


    if @current_user.present?
      if @current_user.admin?
        countries = Country.order(:name)
        @countries = []
        @country_codes = []
        @country_ids = []
        @country_sanctions_lengths = []
        countries.each do |country|
          @countries.push country
          @country_codes.push country.country_code
          @country_ids.push  country.id
          @country_sanctions_lengths.push country.sanctions.length
        end
      end
    end





  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
