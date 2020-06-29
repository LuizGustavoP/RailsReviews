class CreatePublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers do |t|
      t.string :nome
      t.string :descr

      t.timestamps
    end
  end
end
