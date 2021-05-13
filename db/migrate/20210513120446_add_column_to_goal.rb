class AddColumnToGoal < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :icon, :text
  end
end
