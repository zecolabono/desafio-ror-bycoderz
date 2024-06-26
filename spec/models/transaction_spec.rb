require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'associations' do
    it { should belong_to(:transaction_type) }
    it { should belong_to(:company) }
  end

  describe 'callbacks' do
    it 'calls update_company_balance after save' do
      transaction = FactoryBot.create(:transaction, :out)
      expect(transaction).to receive(:update_company_balance)
      transaction.save
    end
  end

  describe '#update_company_balance' do
    let(:company) { FactoryBot.create(:company, balance: 1000.00) }

    context 'when transaction type is OUT' do
      it 'updates company balance correctly' do
        transaction = FactoryBot.create(:transaction, :out, company:, amount: 500.00)
        expect(transaction.company.balance).to eq(500.00)
      end
    end

    context 'when transaction type is IN' do
      it 'updates company balance correctly' do
        transaction = FactoryBot.create(:transaction, :in, company:, amount: 200.00)
        expect(transaction.company.balance).to eq(1200.00)
      end
    end
  end
end
