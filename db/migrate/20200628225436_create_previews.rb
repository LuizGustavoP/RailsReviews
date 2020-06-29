class CreatePreviews < ActiveRecord::Migration[5.1]
  def change
    create_table :previews do |t|
      t.string :titulo
      t.float :score
      t.string :review

      t.timestamps
    end
  end
end
