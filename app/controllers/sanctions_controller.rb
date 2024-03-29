class SanctionsController < ApplicationController
  before_action :check_for_sanction_creator, only: [:edit]
  before_action :check_for_admin, only: [:destroy]

  module SDN
    @sdn_details_hash = {}
    @sdn_id_hash = {}
    filename = File.dirname(File.expand_path('..', __dir__)) + '/data/sdn.csv'
    CSV.foreach(filename) do |row|
      id, name, type, country, title, col_f, col_g, col_h, col_i, col_j, col_k, sdn_details = row
      next if name == 'Name'

      @sdn_details_hash[name] = sdn_details
      @sdn_id_hash[name] = id
    end

    def self.sdn_details(name)
      @sdn_details_hash[name]
    end

    def self.sdn_id(name)
      @sdn_id_hash[name]
    end

    @sdn_address_hash = {}
    filename = File.dirname(File.expand_path('..', __dir__)) + '/data/sdn_address.csv'
    CSV.foreach(filename) do |row|
      id, col_b, address, city, country = row
      next if id == 'ID'

      @sdn_address_hash[id] = address
    end

    def self.sdn_address(id)
      @sdn_address_hash[id]
    end
  end

  def index
    @nations = Sanction.distinct.pluck(:nationality).sort!
    @sanctions = Sanction.order(:name)
  end

  def new
    @sanction = Sanction.new
  end

  def create
    @sanction = Sanction.new sanction_params
    @sanction.user_id = @current_user.id
    @sanction.name = titleize(@sanction.name)
    @sanction.nationality = titleize(@sanction.nationality)
    @sanction.nationality = 'Unknown' if @sanction.nationality.empty?
    comma_index = @sanction.name.index(',')
    @sanction.name = @sanction.name[0..comma_index].upcase + @sanction.name[comma_index + 1..] unless comma_index.nil?
    if Sanction.find_by(name: @sanction.name).present?
      flash[:error] = 'Name already exists'
      render :new
    else
      begin
        if @sanction.image.present?
          unless @sanction.image.include? 'cloudinary'
            req = Cloudinary::Uploader.upload(@sanction.image)
            @sanction.image = req['secure_url']
          end
          @sanction.save
        end
      rescue StandardError
        @sanction.save
      end
      if @sanction.save

        if Country.find_by(name: @sanction.nationality).nil?
          country = Country.new
          country_name = @sanction.nationality
          country.name = country_name
          country_info = get_country(country_name)
          country.official_name = country_info[:official_name]
          country.native_name = country_info[:native_name]
          country.flag = country_info[:flag]
          country.country_code = country_info[:country_code]
          country.save
        end
        Country.find_by(name: @sanction.nationality).sanctions << @sanction unless @sanction.nationality.empty?
        redirect_to @sanction
      else

        render :new
      end
    end
  end

  def edit
    if !$sanction_error_ticker.nil? && !($sanction_error_ticker == 0)
      $sanction_error_ticker = $sanction_error_ticker - 1
    end
    $sanction_error = '' if $sanction_error_ticker == 0
    @sanction = Sanction.find params[:id]
  end

  def update
    @sanction = Sanction.find params[:id]
    previous_name = @sanction.name
    previous_nationality = @sanction.nationality
    @sanction.assign_attributes sanction_params
    @sanction.name = titleize(@sanction.name)
    @sanction.nationality = titleize(@sanction.nationality)
    @sanction.nationality = 'Unknown' if @sanction.nationality.empty?
    return if @sanction.name != previous_name && Sanction.find_by(name: @sanction.name).present?

    begin
      if @sanction.image.present?
        unless @sanction.image.include? 'cloudinary'
          req = Cloudinary::Uploader.upload(@sanction.image)
          @sanction.image = req['secure_url']
        end
        @sanction.save
      end
    rescue StandardError
      @sanction.save
    end
    if @sanction.save
      unless @sanction.nationality == previous_nationality
        if Country.find_by(name: @sanction.nationality).nil?
          country = Country.new
          country.name = @sanction.nationality
          country.save
        end
        Country.find_by(name: @sanction.nationality).sanctions << @sanction unless @sanction.nationality.empty?
      end
      redirect_to @sanction
    else
      render :edit
    end
  end

  def destroy
    sanction = Sanction.find params[:id]
    # unless sanction.nationality.empty?
    #   country = Country.find_by(name: sanction.nationality)
    #   country.sanctions.delete(sanction)
    # end
    sanction.destroy

    redirect_to sanctions_path
  end

  def show
    @sanction = Sanction.find params[:id]
    @fav = false
    if @current_user.present?
      @sanction.favourites.each do |favourite|
        @fav = true if favourite.user_id == @current_user.id
      end
    end
    @sanctioned_by = User.find_by(id: @sanction.user_id).username unless @sanction.user_id.nil?
    comma_index = @sanction.name.index(',')
    unless comma_index.nil?
      @sanction.name = @sanction.name[0..comma_index].upcase + @sanction.name[comma_index + 1..]
      @sanction.save
    end
    if !@sanction.image.nil? && @sanction.image.empty?
      begin
        # your_cse_id = 'a4f896ad0ae3a429b' # www.google.com
        your_cse_id = '57c3cb0530b3d4750' # www.google.com/imghp?hl=EN*
        images_url = "https://www.googleapis.com/customsearch/v1?key=#{your_api_key}&cx=#{your_cse_id}&q=#{@sanction.name.gsub(' ', '%20').gsub(
          ',', '%20'
        )}%20#{@sanction.nationality.gsub(' ', '%20')}&searchType=image&fileType=jpg"
        images_result = HTTParty.get images_url
        @sanction['image'] = images_result['items'][0]['link']
        @sanction.save
      rescue StandardError
      end
    end

    @summary = SDN.sdn_details(@sanction.name)
    @summary = 'Not avaliable' if @summary == '-0-' || @summary.nil?

    if Country.find_by(name: @sanction.nationality).nil?
      country = Country.new
      country_name = @sanction.nationality
      country.name = country_name
      country_info = get_country(country_name)
      country.official_name = country_info[:official_name]
      country.native_name = country_info[:native_name]
      country.flag = country_info[:flag]
      country.country_code = country_info[:country_code]
      country.save
    end
    @country = Country.find_by(name: @sanction.nationality)

    if !@sanction.nationality.empty? && !(Country.find_by(name: @sanction.nationality).sanction_ids.include? @sanction.id)
      Country.find_by(name: @sanction.nationality).sanctions << @sanction
    end

    filename = File.dirname(File.expand_path('..', __dir__)) + '/data/prgrmlst.txt'
    prgrmlst_array = File.read(filename).split("\n\n")

    prgrmlst_array.each do |sdn|
      if sdn[0..@sanction.name.length - 1] == @sanction.name
        @summary = sdn
        break
      end
    end
    @address = SDN.sdn_address(SDN.sdn_id(@sanction.name))
    @address = @address.strip if @address.instance_of? String
    @address = 'Not avaliable' if @address == '-0-' || @address.nil?

    your_cse_id = 'e3218dc0a18944649' # www.google.com
    # your_cse_id = '57c3cb0530b3d4750' # www.google.com/imghp?hl=EN*
    wiki_search = "https://www.googleapis.com/customsearch/v1?key=#{your_api_key}&cx=#{your_cse_id}&q=#{@sanction.name.gsub(' ', '%20').gsub(
      ',', '%20'
    )}%20wikipedia"
    wiki_results = HTTParty.get wiki_search

    if wiki_results['items'].nil?
      @sanction_info = wiki_results
    else
      wiki_url = wiki_results['items'][0]['link']
      if wiki_results['items'][0]['link'].include? 'wikipedia.org/wiki/'
        wiki = wiki_url[wiki_url.index('/wiki/') + 6..]
        dbpedia_url = "https://dbpedia.org/page/#{wiki}"
        result = HTTParty.get dbpedia_url
        result = result.to_s

        if result.include? '<span property="dbo:abstract" lang="en" >'
          span_en1 = result.index('<span property="dbo:abstract" lang="en" >') + 41
          span_en2 = result[span_en1..].index('</span>') - 1
          @sanction_info = result[span_en1..span_en1 + span_en2].gsub('&#39', '').gsub('&quot;', '')
        else
          @sanction_info = 'Not Available'
        end
      else
        @sanction_info = 'Not Available'
      end
    end

    users = User.all
    @favoured_by_id = []
    @favoured_by_username = []

    @sanction.favourites.each do |favourite|
      @favoured_by_id.push users.find_by(id: favourite.user_id).id
      @favoured_by_username.push users.find_by(id: favourite.user_id).username
    end

    @id = users.find_by(username: 'Admin') # for add and remove favourite only
    @id = @current_user.id if @current_user.present?

    comments = Comment.all
    @sanction_comments = []
    comments.each do |comment|
      @sanction_comments.push comment if comment.sanction_id == @sanction.id
    end
  end

  def add_favourite
    @sanction = Sanction.find params[:id]
    @favoured_by_id = []
    return unless @current_user.present?
    return if @current_user.admin?

    favourite = Favourite.create(sanction_id: params[:id], user_id: @current_user.id)
    @sanction.favourites << favourite
    @sanction.save
    @fav = true
  end

  def remove_favourite
    @sanction = Sanction.find params[:id]
    return unless @sanction.favourites.find_by(user_id: @current_user.id).present?

    @sanction.favourites.find_by(user_id: @current_user.id).destroy
  end

  def favourites
    @sanction = Sanction.find params[:id]
    @favoured_by_id = []
    @sanction.favourites.each do |favourite|
      @favoured_by_id.push User.find_by(id: favourite.user_id).id
    end
  end
end

private

def titleize(str)
  str.split(/ |_/).map(&:capitalize).join(' ')
end

def sanction_params
  params.require(:sanction).permit(:name, :nationality, :risk, :image)
end

def get_country(country_name)
  country_info = { official_name: nil, native_name: nil, country_code: nil, flag: nil }
  begin
    country_url = "https://restcountries.com/v3.1/name/#{country_name.gsub(' ', '%20')}?fullText=true"
    country_details = HTTParty.get country_url
    country_info[:official_name] = country_details[0]['name']['official']
    native_name_list = country_details[0]['name']['nativeName'].flatten
    native_name_list = native_name_list.drop(2) if native_name_list[0] == 'eng' && native_name_list.length > 2
    country_info[:native_name] = native_name_list[1]['official']
    country_info[:country_code] = country_details[0]['cca2']
    country_info[:flag] = country_details[0]['flags']['png']
  rescue StandardError
    begin
      country_details = ISO3166::Country.find_country_by_any_name(country_name)
      country_info[:official_name] = country_details.iso_long_name
      country_info[:country_code] = country_details.alpha2
    rescue StandardError
    end
  end

  country_info
end
