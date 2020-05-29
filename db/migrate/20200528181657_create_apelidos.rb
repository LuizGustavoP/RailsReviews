class CreateApelidos < ActiveRecord::Migration[5.1]
  def change
    create_table :apelidos do |t|
      t.string :nome
      t.string :apelido

      t.timestamps
    end
  end
end
