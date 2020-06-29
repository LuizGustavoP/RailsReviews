class AddGameRefToPreview < ActiveRecord::Migration[5.1]
  def change
    add_reference :previews, :game, foreign_key: true
  end
end
