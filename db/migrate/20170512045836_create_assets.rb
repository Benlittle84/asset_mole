class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.text :serial_num
      t.text :description
      t.text :status
      t.text :notes
      t.timestamps
    end
  end
end
