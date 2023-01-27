class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  before_action :check_for_login, :only => [:show]
  before_action :last_controller, :only => [:new]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    $location = request.headers["HTTP_REFERER"]
    if last_controller == "session"
      $location = root_path
    end
   
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      begin
        redirect_to $location
        $location = root_path
      rescue
        redirect_to root_path
      end
    else
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
          if country.country_code.present?
            @country_codes.push country.country_code
          else
            @country_codes.push country.name
          end
          @country_ids.push  country.id
          @country_sanctions_lengths.push country.sanctions.length
        end
      end
    end

  def edit
    @user = User.find_by(id: params[:id])
    if @user.nil?
      @user = User.find_by(username: params[:id])
    end
    flash[:error] = "Invalid password"
  end

  def update
    user = User.find_by(id: params[:id])
    user.assign_attributes user_params
    user.save
    flash[:notice] = "Your password has been successfully changed."

    redirect_to "/users/#{user.username}"
  end




  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
