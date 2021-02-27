class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.references :category, null: false, foreign_key: true
      t.text :description
      t.integer :quantity
      t.references :measurement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
