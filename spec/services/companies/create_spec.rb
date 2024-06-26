require 'rails_helper'

RSpec.describe Companies::Create, type: :service do
  let(:params) { { name: 'Nova Empresa', owner_name: 'João', balance: 1000.0 } }

  describe '#execute' do
    context 'when execute is called' do
      it 'finds or creates a company' do

        expect(Company).to receive(:find_or_create_by).with(params)
        service = described_class.new(params)
        service.execute
      end
    end
  end
end
