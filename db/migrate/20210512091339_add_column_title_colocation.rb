class AddColumnTitleColocation < ActiveRecord::Migration[6.0]
  def change
    add_column( :colocations, :title, :string)
  end
end
