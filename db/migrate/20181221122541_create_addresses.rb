class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
    	t.text :address
		t.integer :pincode
		t.string :city
		t.string :state
		t.string :country
		t.string :landmark
      t.timestamps
    end
  end
end
