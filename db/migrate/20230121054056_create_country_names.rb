class CreateCountryNames < ActiveRecord::Migration[5.2]
  def change
    create_table :country_names do |t|
      t.string :name
      t.string :alt_name
      t.integer :country_id
    end
  end
end
