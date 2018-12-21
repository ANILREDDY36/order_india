class AddImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :is_verified, :boolean
    add_column :products, :image, :string
    add_column :products, :description, :text
  end
end
