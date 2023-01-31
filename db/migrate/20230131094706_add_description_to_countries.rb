class AddDescriptionToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :description, :text
  end
end
