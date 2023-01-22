class CreateCountriesSanctions < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_sanctions, :id => false do |t|
      t.integer :country_id
      t.integer :sanction_id
    end
  end
end
