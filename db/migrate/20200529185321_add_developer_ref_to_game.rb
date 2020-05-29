class AddDeveloperRefToGame < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :developer, foreign_key: true
  end
end
