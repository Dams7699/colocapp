class AddPhoneNumberToColocations < ActiveRecord::Migration[6.0]
  def change
    add_column :colocations, :phone_number, :string
  end
end
