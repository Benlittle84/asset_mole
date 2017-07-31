class AssociateAssetToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :assets do |t|
      t.belongs_to :user, index: true
    end
  end
end
