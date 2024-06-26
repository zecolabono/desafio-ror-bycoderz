require 'rails_helper'

RSpec.describe Transactions::IndexByCompany, type: :service do
  describe '#execute' do
    let(:transactions) { FactoryBot.create_list(:transaction, 3, :in) }

    it 'returns transactions for the company' do
      allow(Transaction).to receive(:where).with(company_id: transactions.first.company_id).and_return(transactions)

      service = Transactions::IndexByCompany.new(transactions.first.company_id)
      expect(service.execute).to eq(transactions)
    end
  end
end
