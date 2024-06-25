class Transaction < ApplicationRecord
  belongs_to :transaction_type
  belongs_to :company

  after_save :update_company_balance

  def update_company_balance
    new_balance = if transaction_type.operator == TransactionType::OUT_OPERATOR
                    company.balance - amount
                  else
                    company.balance + amount
                  end

    company.balance = format('%.2f', new_balance)
    company.save
  end
end
