class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.references :profile, null: false, foreign_key: true
      t.integer :unit
      t.integer :streetnumber
      t.string :streetname
      t.string :suburb
      t.integer :postcode

      t.timestamps
    end
  end
end
