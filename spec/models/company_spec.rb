require 'rails_helper'

RSpec.describe Company, type: :model do
  before(:all) do
    FactoryBot.create(:company, balance: 1000.00)
  end
  describe 'associations' do
    it { should have_many(:transactions) }
  end
end
