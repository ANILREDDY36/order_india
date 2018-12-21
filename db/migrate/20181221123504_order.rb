class Order < ActiveRecord::Migration[5.2]
  def change
  	create_table :orders do |t|
		t.integer :status
		t.float :total
      t.timestamps
    end  
  end
end
