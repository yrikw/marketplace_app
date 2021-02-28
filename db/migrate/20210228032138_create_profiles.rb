class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :adress
      t.text :description

      t.timestamps
    end
  end
end
