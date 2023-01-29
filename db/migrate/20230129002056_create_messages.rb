class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.text :text
      t.datetime :sent
      t.boolean :read, :default => false
      t.timestamps null: false
    end
  end
end
