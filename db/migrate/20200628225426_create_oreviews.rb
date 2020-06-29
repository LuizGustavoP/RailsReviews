class CreateOreviews < ActiveRecord::Migration[5.1]
  def change
    create_table :oreviews do |t|
      t.string :titulo
      t.float :score
      t.string :review

      t.timestamps
    end
  end
end
