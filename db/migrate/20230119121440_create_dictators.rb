class CreateDictators < ActiveRecord::Migration[5.2]
  def change
    create_table :dictators do |t|
      t.string :name
      t.string :title
      t.string :nationality
      t.integer :country_id
      t.date :dob
      t.text :image
      t.timestamps null: false
    end
  end
end
