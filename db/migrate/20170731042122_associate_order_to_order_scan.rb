class AssociateOrderToOrderScan < ActiveRecord::Migration[5.0]
  def change
    change_table :order_scans do |t|
      t.belongs_to :order, index: true
    end

  end
end
