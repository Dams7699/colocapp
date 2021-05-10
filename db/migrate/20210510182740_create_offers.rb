class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :user
      t.references :colocation
      t.string :status

      t.timestamps
    end
  end
end
