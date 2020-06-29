class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :nome
      t.float :score

      t.timestamps
    end
  end
end
