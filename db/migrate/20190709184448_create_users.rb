class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email

      t.timestamps
    end

    add_reference :accounts, :user,    index: true, foreign_key: { on_delete: :cascade, on_update: :cascade }
    add_reference :listings, :account, index: true, foreign_key: { on_delete: :cascade, on_update: :cascade }

    reversible do |to|
      to.up do
        execute <<~SQL.squish
          INSERT INTO users (id, email, created_at, updated_at)
          SELECT id, email, created_at, updated_at FROM accounts
        SQL

        execute <<~SQL.squish
          UPDATE accounts SET user_id = id
        SQL

        execute <<~SQL.squish
          UPDATE listings SET account_id = (SELECT account_id FROM products WHERE products.id = listings.product_id)
        SQL

        remove_foreign_key :products, :accounts
        rename_column :products, :account_id, :user_id
        add_foreign_key :products, :users, index: true, on_delete: :cascade, on_update: :cascade
      end

      to.down do
        remove_foreign_key :products, :users
        rename_column :products, :user_id, :account_id
        add_foreign_key :products, :accounts
      end
    end
  end
end
