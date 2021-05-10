class CreateColocationGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :colocation_goals do |t|
      t.references :colocation, null: false, foreign_key: true
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
