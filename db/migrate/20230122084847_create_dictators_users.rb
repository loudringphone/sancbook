class CreateDictatorsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :dictators_users, :id => false do |t|
      t.integer :dictator_id
      t.integer :user_id
    end
  end
end
