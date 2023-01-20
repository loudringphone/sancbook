class CreateCountriesSanctions < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_sanctions, :id => false do |t|
      t.integer :countries_id
      t.integer :sanctions_id
    end
  end
end
