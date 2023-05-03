class DeleteSomeJokes < ActiveRecord::Migration[6.1]
  def change
    DELETE FROM jokes
  end
end
