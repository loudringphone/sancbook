class AddUserIdToDictator < ActiveRecord::Migration[5.2]
  def change
    add_column :dictators, :user_id, :integer
  end
end
