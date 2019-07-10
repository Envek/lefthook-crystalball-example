class CreateProductVariations < ActiveRecord::Migration[6.0]
  def change
    create_table :product_variations do |t|
      t.references :product, index: true, foreign_key: { on_delete: :cascade, on_update: :cascade }
      t.decimal :price
      t.integer :quantity
      t.string  :specifics

      t.timestamps
    end

    reversible do |to|
      to.up do
        execute <<~SQL.squish
          INSERT INTO product_variations (product_id, price, quantity, created_at, updated_at)
          SELECT id AS product_id, price, quantity, created_at, updated_at FROM products
        SQL
      end
      to.down do
        execute <<~SQL.squish
          UPDATE products
          SET (price, quantity) = (
            SELECT price, quantity
            FROM product_variations
            WHERE products.id = product_variations.product_id
          )
        SQL
      end
    end

    remove_column :products, :price,    :decimal
    remove_column :products, :quantity, :integer
  end
end
