class CreateCommentsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_users do |t|
      t.integer :comment_id
      t.integer :user_id
    end
  end
end
