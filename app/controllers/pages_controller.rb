class PagesController < ApplicationController
  def home
    countries = Country.order(:name)
    @country_codes = ''
    @country_ids = ''
    @country_sanctions_lengths = ''
    countries.each do |country|
      @country_codes =  @country_codes + country.country_code.to_s + ','
      @country_ids = @country_ids + country.id.to_s + ','
      @country_sanctions_lengths = @country_sanctions_lengths + country.sanctions.length.to_s + ','
    end 
    @country_codes.chop!
    @country_ids.chop!
    @country_sanctions_lengths.chop!

  end

  def about
  end
end
