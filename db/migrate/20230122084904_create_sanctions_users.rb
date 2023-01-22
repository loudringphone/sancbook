class CreateSanctionsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :sanctions_users do |t|
      t.integer :sanction_id
      t.integer :user_id
    end
  end
end
