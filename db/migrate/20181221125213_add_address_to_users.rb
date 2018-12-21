class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :text
    add_column :users, :pincode, :integer
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :landmark, :string
    add_column :users, :role, :integer
    add_column :users, :rating, :integer
    add_column :users, :is_verified, :boolean, default: false

  end
end