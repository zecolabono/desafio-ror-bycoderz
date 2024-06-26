require 'rails_helper'

RSpec.describe 'Uploads Routing', type: :routing do
  it 'routes to #perform_upload  via POST' do
    expect(post: 'http://localhost:3000/perform_upload').to route_to(
      controller: 'uploads',
      action: 'perform_upload'
    )
  end

  it 'routes to #upload via GET' do
    expect(get: 'http://localhost:3000/upload').to route_to(
      controller: 'uploads',
      action: 'upload'
    )
  end
end
