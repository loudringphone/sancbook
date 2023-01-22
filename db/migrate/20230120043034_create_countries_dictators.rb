class CreateCountriesDictators < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_dictators, :id => false do |t|
      t.integer :country_id
      t.integer :dictator_id
    end
  end
end
