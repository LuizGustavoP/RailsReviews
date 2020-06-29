class CreatePlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :platforms do |t|
      t.string :nome
      t.integer :gen

      t.timestamps
    end
  end
end
