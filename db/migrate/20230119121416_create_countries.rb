class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :official_name
      t.string :native_name
      t.text :flag
      t.timestamps null: false
    end
  end
end
