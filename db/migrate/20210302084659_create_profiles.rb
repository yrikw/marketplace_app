class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
