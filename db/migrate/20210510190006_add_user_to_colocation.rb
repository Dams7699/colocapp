class AddUserToColocation < ActiveRecord::Migration[6.0]
  def change
    remove_reference :colocations, :user, null: false, foreign_key: true
  end
end
