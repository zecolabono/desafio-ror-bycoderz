class CreateTransactionTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :transaction_types do |t|
      t.string :description
      t.string :operator
    end
  end
end
