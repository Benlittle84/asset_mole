class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.date :date
      t.float :cost    
      t.text :ordered_by
      t.text :notes
      t.timestamps
    end
  end
end
