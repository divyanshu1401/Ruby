class AddReferenceToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :product_id, :int
    add_foreign_key :reviews, :products
  end
end
