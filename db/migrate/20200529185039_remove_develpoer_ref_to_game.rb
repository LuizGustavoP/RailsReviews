class RemoveDevelpoerRefToGame < ActiveRecord::Migration[5.1]
  def change
    remove_reference :games, :developer, foreign_key: true
  end
end
