FactoryBot.define do
  factory :transaction, class: Transaction do
    card_number { '4753****3153' }
    beneficiary_document { '23422233342' }
    amount { 134.93 }
    created_at { DateTime.now }

    before(:create) do |transaction|
      transaction.company ||= create(:company)
    end

    trait :out do
      before(:create) do |transaction|
        transaction.transaction_type ||= create(:transaction_type, :out)
      end
    end

    trait :in do
      before(:create) do |transaction|
        transaction.transaction_type ||= create(:transaction_type, :in)
      end
    end
  end
end
