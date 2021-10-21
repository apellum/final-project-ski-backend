class CreateTransactionProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction_products do |t|
      t.belongs_to :products, null: false, foreign_key: true
      t.belongs_to :transactions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
