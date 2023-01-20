class CountriesController < ApplicationController

 

  def index
    @countries = Country.all
  end

  def new
  end

  def edit
    @country = Country.find params[:id]
  end

  def update
    country = Country.find params[:id]
    country.update country_params
    redirect_to country
  end

  def delete
    country = Country.find params[:id]
    country.destroy
    redirect_to countries_path
  end

  def show
    @country = Country.find params[:id]
    if @country.official_name == "" || @country.official_name.nil?
        @country.official_name = (country_info @country.name)[:official_name]
        @country.save
    end
    if @country.native_name == "" || @country.native_name.nil?
        @country.native_name = (country_info @country.name)[:native_name]
        @country.save
    end
    if @country.flag == "" || @country.flag.nil?
        @country.flag = (country_info @country.name)[:flag]
        @country.save
    end



    your_api_key = 'AIzaSyB78d32yWEekzTclS_gZO9CqWVCMNptHgY'
    your_cse_id = 'e3218dc0a18944649' # www.google.com
    # your_cse_id = '57c3cb0530b3d4750' # www.google.com/imghp?hl=EN*
    wiki_search = "https://www.googleapis.com/customsearch/v1?key=#{your_api_key}&cx=#{your_cse_id}&q=#{@country.name.gsub(' ', '%20').gsub(',', '%20')}%20wikipedia"
    wiki_results = HTTParty.get wiki_search
    if !wiki_results.to_s.include? 'API key not valid'
      wiki_url = wiki_results["items"][0]["link"]
      wiki = wiki_url[wiki_url.index("/wiki/")+6..]
      dbpedia_url = "https://dbpedia.org/page/#{wiki}"
      result = HTTParty.get dbpedia_url
      result = result.to_s
      
      if result.include? "<span property=\"dbo:abstract\" lang=\"en\" >"
        span_en1 = result.index("<span property=\"dbo:abstract\" lang=\"en\" >") + 41
        span_en2 = result[span_en1..].index("</span>") - 1
        @country_info = result[span_en1..span_en1+span_en2].gsub('&#39','').gsub('&quot;','')
      else
        @country_info = "Not Available"
      end
    else
      @country_info = wiki_results
    end
    
    @cia_factbook = {}
    filename = File.dirname(File.expand_path('../..', __FILE__)) + '/data/cia_factbook.csv'
    CSV.foreach(filename, :headers => true, :header_converters => :symbol, :converters => :all) do |row|
        @cia_factbook[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
    end




    your_api_key = 'AIzaSyB78d32yWEekzTclS_gZO9CqWVCMNptHgY'
    search = "#{@country.name} anthem"
    api_video_results = "https://www.googleapis.com/youtube/v3/search?key=#{your_api_key}&q=#{search}&type=video&part=snippet"
    video_results = HTTParty.get api_video_results
    if !video_results.to_s.include? 'API key not valid'
    @video = "https://www.youtube.com/embed/" + video_results["items"][0]["id"]["videoId"]
    else
      @video = video_results
      
    end

  end

  private
  def country_params
    params.require(:country).permit(:name, :official_name, :native_name, :flag)
  end

end


