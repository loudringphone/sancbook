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
  end

  def show
    @sanction = Sanction.find params[:id]
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

  