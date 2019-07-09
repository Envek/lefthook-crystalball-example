class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :quantity
      t.decimal :price
      t.references :account, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
