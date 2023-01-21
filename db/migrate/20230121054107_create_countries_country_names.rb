class CreateCountriesCountryNames < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_country_names, :id => false do |t|
      t.integer :countries_id
      t.integer :country_names_id
    end
  end
end
