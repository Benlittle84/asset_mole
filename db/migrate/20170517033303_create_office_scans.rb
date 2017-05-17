class CreateOfficeScans < ActiveRecord::Migration[5.0]
  def change
    create_table :office_scans do |t|

      t.timestamps
    end
  end
end
