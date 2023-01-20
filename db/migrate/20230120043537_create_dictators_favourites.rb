class CreateDictatorsFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :dictators_favourites, :id => false do |t|
      t.integer :dictators_id
      t.integer :favourites_id
    end
  end
end
