class SanctionsController < ApplicationController
  module SDN
    @sdn_details_hash = {}
    @sdn_id_hash = {}
    filename = File.dirname(File.expand_path('../..', __FILE__)) + '/data/sdn.csv'
    CSV.foreach(filename) do |row|
      id, name, type, country, title, col_f, col_g, col_h, col_i, col_j, col_k, sdn_details = row
      next if name == "Name"
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
    filename = File.dirname(File.expand_path('../..', __FILE__)) + '/data/sdn_address.csv'
      CSV.foreach(filename) do |row|
        id, col_b, address, city, country = row
        next if id == "ID"
        @sdn_address_hash[id] = address
      end
    
      def self.sdn_address(id)
        @sdn_address_hash[id]
      end
  
  end
  
  def index
    @sanctions = Sanction.all
  end

  def new
    @sanction = Sanction.new
  end

  def create
    @sanction = Sanction.new sanction_params
    @sanction.name = titleize(@sanction.name)
    @sanction.nationality = titleize(@sanction.nationality)
    @sanction.nationality = 'Unknown' if @sanction.nationality.empty?
    comma_index = @sanction.name.index(',')
    unless comma_index.nil?
      @sanction.name = @sanction.name[0..comma_index].upcase + @sanction.name[comma_index+1..]
    end
    unless Sanction.find_by(name: @sanction.name).present?
      @sanction.save
      if Country.find_by(name: @sanction.nationality).nil?
        country = Country.new
        country.name = @sanction.nationality
        country.save
      end
      unless @sanction.nationality.empty?
        Country.find_by(name: @sanction.nationality).sanctions << @sanction
      end
      @error = ''
      redirect_to @sanction
    else
      @error = "Entry with this name already exists!"
      render new_sanction_path
    end
  end

  def edit
    unless $sanction_error_ticker.nil?
      $sanction_error_ticker = $sanction_error_ticker -1 unless $sanction_error_ticker == 0
    end
    if $sanction_error_ticker == 0
      $sanction_error = ''
    end
    @sanction = Sanction.find params[:id]
  end

  def update
    sanction = Sanction.find params[:id]
    previous_name = sanction.name
    previous_nationality = sanction.nationality
    sanction.assign_attributes sanction_params
    sanction.name = titleize(sanction.name)
    sanction.nationality = titleize(sanction.nationality)
    sanction.nationality = 'Unknown' if sanction.nationality.empty?
    unless (sanction.name != previous_name && Sanction.find_by(name: sanction.name).present?)
      sanction.save
      unless sanction.nationality == previous_nationality
        if Country.find_by(name: sanction.nationality).nil?
          country = Country.new
          country.name = sanction.nationality
          country.save
        end
        unless sanction.nationality.empty?
          Country.find_by(name: sanction.nationality).sanctions << sanction
        end
        unless previous_nationality.empty?
          country = Country.find_by(name: previous_nationality)
          country.sanctions.delete(sanction) # if use destroy, the sanction would be destroyed.
        end
        
      end
      $sanction_error = ''
      redirect_to sanction
    else
      $sanction_error = "Entry with this name already exists!"
      $sanction_error_ticker = 2
      redirect_to edit_sanction_url
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

    unless @sanction.image.nil?
      if @sanction.image.empty?
        begin
            your_api_key = 'AIzaSyB78d32yWEekzTclS_gZO9CqWVCMNptHgY'
            # your_cse_id = 'a4f896ad0ae3a429b' # www.google.com
            your_cse_id = '57c3cb0530b3d4750' # www.google.com/imghp?hl=EN*
            images_url = "https://www.googleapis.com/customsearch/v1?key=#{your_api_key}&cx=#{your_cse_id}&q=#{@sanction.name.gsub(' ', '%20').gsub(',', '%20')}%20#{@sanction.nationality.gsub(' ', '%20')}&searchType=image&fileType=jpg"
            images_result = HTTParty.get images_url
            @sanction["image"] = images_result["items"][0]["link"]
            @sanction.save
        rescue
        end
      end
    end











    @summary =  SDN.sdn_details(@sanction.name)
    @summary = "Not avaliable" if @summary == '-0-' || @summary == nil

    if Country.find_by(name: @sanction.nationality).nil?
      country = Country.new
      country.name = @sanction.nationality
      country.save
    end
    unless @sanction.nationality.empty?
      unless Country.find_by(name: @sanction.nationality).sanction_ids.include? @sanction.id
        Country.find_by(name: @sanction.nationality).sanctions << @sanction
      end
    end

    filename = File.dirname(File.expand_path('../..', __FILE__)) + '/data/prgrmlst.txt'
    prgrmlst_array = File.read(filename).split("\n\n")

    prgrmlst_array.each do |sdn|
        if sdn[0..@sanction.name.length - 1] == @sanction.name
            @summary = sdn
            break
        end
    end
    @address = SDN.sdn_address(SDN.sdn_id(@sanction.name))
    @address = @address.strip if @address.instance_of? String
    @address = "Not avaliable" if @address == '-0-' || @address == nil
  end
  



end

private
  def titleize(str)
    str.split(/ |\_/).map(&:capitalize).join(" ")
  end

  def sanction_params
    params.require(:sanction).permit(:name, :nationality, :risk, :image)
  end

  