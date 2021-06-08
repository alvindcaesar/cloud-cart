class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name, default: ''
      t.decimal :price, default: 0.0
      t.string :sku
      t.string :description, default: ''
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
