class AddCountryCodeToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :country_code, :string
  end
end
