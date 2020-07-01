class AddUseridToPreviews < ActiveRecord::Migration[5.1]
  def change
    add_column :previews, :userid, :integer
  end
end
