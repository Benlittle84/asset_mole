class AssociateAddressToSupplier < ActiveRecord::Migration[5.0]
  def change
  	change_table :addresses do |t|
      t.belongs_to :supplier, index: true
    end
  end
end
