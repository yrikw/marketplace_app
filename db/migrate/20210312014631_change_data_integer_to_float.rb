class ChangeDataIntegerToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :listings, :price, :integer
  end
end
