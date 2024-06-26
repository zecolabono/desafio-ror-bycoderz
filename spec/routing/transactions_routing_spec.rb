require 'rails_helper'

RSpec.describe TransactionsController, type: :routing do
  it 'routes to #index_by_company via GET' do
    expect(get: 'http://localhost:3000/transactions/1').to route_to(
      controller: 'transactions',
      action: 'index_by_company',
      company_id: '1'
    )
  end
end
