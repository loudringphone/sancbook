class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.text :email
      t.boolean :admin, :default => false
      t.timestamps
    end
  end
end
