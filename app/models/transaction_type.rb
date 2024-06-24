class TransactionType < ApplicationRecord
  has_many :transactions

  OUT_OPERATOR = 'OUT'.freeze
  IN_OPERATOR = 'IN'.freeze
end
