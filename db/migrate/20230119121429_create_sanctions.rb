class CreateSanctions < ActiveRecord::Migration[5.2]
  def change
    create_table :sanctions do |t|
      t.string :name
      t.string :nationality
      t.integer :country_id
      t.integer :user_id
      t.text :risk
      t.text :image
      t.timestamps null: false
    end
  end
end
