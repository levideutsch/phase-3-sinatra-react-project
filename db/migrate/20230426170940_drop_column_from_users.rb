class DropColumnFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :email_address
    remove_column :users, :password
  end
end
