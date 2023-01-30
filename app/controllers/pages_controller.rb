class PagesController < ApplicationController

  def home
    countries = Country.order(:name)
    country_codes = []
    country_sanctions_lengths = []
    countries.each do |country|
      if country.country_code.present?
        country_codes.push(country.country_code)
      else
        country_codes.push(country.name)
      end
      country_sanctions_lengths.push country.sanctions.length
    end
    gon.sanctionedCountryCodes = country_codes
    gon.countrySanctionsLengths = country_sanctions_lengths

  end

  def about
  end
end
