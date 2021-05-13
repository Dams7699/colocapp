class AddColumnToHobby < ActiveRecord::Migration[6.0]
  def change
    add_column :hobbies, :icon, :text
  end
end
