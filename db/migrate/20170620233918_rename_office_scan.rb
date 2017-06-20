class RenameOfficeScan < ActiveRecord::Migration[5.0]
  def change
  	rename_table :office_scans, :order_scans
  end
end
