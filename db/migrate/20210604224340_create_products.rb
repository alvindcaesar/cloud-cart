class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.string :sku
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
