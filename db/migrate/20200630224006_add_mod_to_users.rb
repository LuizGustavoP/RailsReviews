class AddModToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :mod, :boolean, default: false
  end
end
