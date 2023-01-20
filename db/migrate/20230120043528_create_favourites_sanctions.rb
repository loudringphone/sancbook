class CreateFavouritesSanctions < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites_sanctions, :id => false do |t|
      t.integer :favourites_id
      t.integer :sanctions_id
    end
  end
end
