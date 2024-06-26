FactoryBot.define do
  factory :transaction_type, class: TransactionType do
    trait :in do
      description { 'Debito' }
      operator { TransactionType::IN_OPERATOR }
    end

    trait :out do
      description { 'Boleto' }
      operator { TransactionType::OUT_OPERATOR }
    end
  end
end
