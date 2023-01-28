class CreateMessagesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :messages_users do |t|
      t.integer :message_id, foreign_key: true
      t.integer :user_id, foreign_key: true
    end
  end
end
