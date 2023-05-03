class DropAnswerFromJokes < ActiveRecord::Migration[6.1]
  def change
    remove_column :jokes, :answer 
  end
end
