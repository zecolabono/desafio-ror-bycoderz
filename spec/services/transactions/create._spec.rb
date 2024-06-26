require 'rails_helper'

RSpec.describe Transactions::Create, type: :service do
  let(:params) do
    { transaction_type_id: 1, company_id: 1, amount: 500.0, cpf: '12345678900',
                   card_number: '123456789876', created_at: DateTime.now }
  end

  describe '#execute' do
    context 'when execute is called' do
      it 'creates a transaction' do
        expect(Transaction).to receive(:create).with(params)
        service = described_class.new(params)
        service.execute
      end
    end
  end
end
