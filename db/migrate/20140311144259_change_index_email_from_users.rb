class ChangeIndexEmailFromUsers < ActiveRecord::Migration
  def up
    remove_index :users, :email
    add_index :users, [:email, :client_id], unique: true
  end

  def down
    remove_index :users, :email_unique
    add_index :users, :email, unique: true
  end
end
