class AssociateOfficeToUser < ActiveRecord::Migration[5.0]
  def change
  	  change_table :offices do |t|
        t.belongs_to :address, index: true
      end
  end
end
