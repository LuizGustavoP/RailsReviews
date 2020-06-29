class AddGameRefToOreview < ActiveRecord::Migration[5.1]
  def change
    add_reference :oreviews, :game, foreign_key: true
  end
end
