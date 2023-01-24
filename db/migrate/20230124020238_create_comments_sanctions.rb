class CreateCommentsSanctions < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_sanctions do |t|
      t.integer :comment_id
      t.integer :sanction_id
    end
  end
end
