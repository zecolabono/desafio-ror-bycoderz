require 'rails_helper'

RSpec.describe CompaniesController, type: :routing do
  it 'routes to #index via GET' do
    expect(get: 'http://localhost:3000/companies').to route_to(
      controller: 'companies',
      action: 'index'
    )
  end
end
