class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :sanction_id
      t.text :text
      t.datetime :sent
      t.timestamps null: false
    end
  end
end
