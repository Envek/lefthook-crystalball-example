class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :login, null: false, index: { unique: true }
      t.string :email, null: false

      t.timestamps
    end
  end
end
