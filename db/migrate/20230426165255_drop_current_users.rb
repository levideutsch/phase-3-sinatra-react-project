class DropCurrentUsers < ActiveRecord::Migration[6.1]
  def change
    drop_table :current_users
  end
end
