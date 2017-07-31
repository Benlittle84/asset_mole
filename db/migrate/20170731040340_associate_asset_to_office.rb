class AssociateAssetToOffice < ActiveRecord::Migration[5.0]
  def change
    change_table :assets do |t|
      t.belongs_to :office, index: true
    end
  end
end
