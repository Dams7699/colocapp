class AddCoordinatesToColocations < ActiveRecord::Migration[6.0]
  def change
    add_column :colocations, :latitude, :float
    add_column :colocations, :longitude, :float
  end
end
