class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :credit_card
      t.string :beneficiary_document
      t.float :amount
      t.datetime :created_at
      t.references :company, foreign_key: true
      t.references :transaction_type, foreign_key: true
    end
  end
end
