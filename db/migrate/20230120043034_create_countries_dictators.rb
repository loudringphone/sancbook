class CreateCountriesDictators < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_dictators, :id => false do |t|
      t.integer :countries_id
      t.integer :dictators_id
    end
  end
end
