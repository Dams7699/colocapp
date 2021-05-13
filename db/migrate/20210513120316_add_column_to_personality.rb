class AddColumnToPersonality < ActiveRecord::Migration[6.0]
  def change
    add_column :personalities, :icon, :text
  end
end
