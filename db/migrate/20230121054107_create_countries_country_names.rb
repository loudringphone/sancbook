class CreateCountriesCountryNames < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_country_names, :id => false do |t|
      t.integer :country_id
      t.integer :country_name_id
    end
  end
end
