class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.text :name
      t.text :contact
      t.text :phone
      t.text :address
      t.text :email
      t.text :address_type

      t.timestamps
    end
  end
end
