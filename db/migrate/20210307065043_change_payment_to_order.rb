class ChangePaymentToOrder < ActiveRecord::Migration[6.0]
  def change
    rename_table :payments, :orders
  end
end
