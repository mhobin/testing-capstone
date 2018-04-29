class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :sku
      t.string :name
      t.integer :salePrice
      t.string :image
      t.boolean :freeShipping

      t.timestamps
    end
  end
end
