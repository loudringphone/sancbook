class CreateDictatorsFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :dictators_favourites, :id => false do |t|
      t.integer :dictator_id
      t.integer :favourite_id
    end
  end
end
