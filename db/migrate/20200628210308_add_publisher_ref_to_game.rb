class AddPublisherRefToGame < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :publisher, foreign_key: true
  end
end
