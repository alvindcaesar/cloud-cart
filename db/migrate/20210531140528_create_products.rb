class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :users
      t.string :product_name
      t.integer :price
      t.string :sku
      t.string :description

      t.timestamps
    end
  end
end
