class CreateFavouritesSanctions < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites_sanctions, :id => false do |t|
      t.integer :favourite_id
      t.integer :sanction_id
    end
  end
end
