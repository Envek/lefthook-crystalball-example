class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :item_id
      t.references :product, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
