class ChangeColumnNameFromJokes < ActiveRecord::Migration[6.1]
  def change
    rename_column :jokes, :question, :body
  end
end
