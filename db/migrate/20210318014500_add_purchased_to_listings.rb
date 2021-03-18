class AddPurchasedToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :purchased, :boolean, default: false
  end
end
