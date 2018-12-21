class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
    	t.string :name
    	t.string :email,             null: false, default: ""
		t.string :contact_number
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
