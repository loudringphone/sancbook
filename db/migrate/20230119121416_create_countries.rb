class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :offical_name
      t.string :native_name
      t.text :image
      t.timestamps null: false
    end
  end
end
