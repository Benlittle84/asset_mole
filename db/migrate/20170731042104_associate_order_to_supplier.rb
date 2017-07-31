class AssociateOrderToSupplier < ActiveRecord::Migration[5.0]
  def change
    change_table :orders do |t|
      t.belongs_to :supplier, index: true
    end

  end
end
