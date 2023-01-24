class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.integer :sanction_id
      t.integer :user_id
      t.timestamps
    end
  end
end
