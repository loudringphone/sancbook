class AddUserIdToSanctions < ActiveRecord::Migration[5.2]
  def change
    add_column :sanctions, :user_id, :integer
  end
end
