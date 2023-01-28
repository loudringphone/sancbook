class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.text :text
      t.datetime :sent
      t.integer :unread, :default => 0
      t.timestamps null: false
    end
    add_index :messages, :sender_id
    add_index :messages, :receiver_id
  end
end
