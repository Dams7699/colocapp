class CreateColocations < ActiveRecord::Migration[6.0]
  def change
    create_table :colocations do |t|
      t.string :address
      t.text :description
      t.integer :price
      t.integer :desired_people
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
