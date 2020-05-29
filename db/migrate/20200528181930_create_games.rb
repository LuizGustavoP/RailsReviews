class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :nome
      t.string :dev
      t.string :pub
      t.float :score
      t.string :platform

      t.timestamps
    end
  end
end
