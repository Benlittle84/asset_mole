class AssociateAddressToOffice < ActiveRecord::Migration[5.0]
  def change
    change_table :addresses do |t|
      t.belongs_to :office, index: true
    end
  end
end
