class CurrentUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :current_users do |t|
      t.string :username
      t.integer :user_id
    end
  end
end
