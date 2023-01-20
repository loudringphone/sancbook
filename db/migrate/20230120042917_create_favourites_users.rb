class CreateFavouritesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites_users, :id => false do |t|
      t.integer :favourites_id
      t.integer :users_id
    end
  end
end
