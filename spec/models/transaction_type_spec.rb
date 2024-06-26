require 'rails_helper'

RSpec.describe TransactionType, type: :model do
  describe 'associations' do
    it { should have_many(:transactions) }
  end

  describe 'constants' do
    it "defines OUT_OPERATOR as 'OUT'" do
      expect(TransactionType::OUT_OPERATOR).to eq('OUT')
    end

    it "defines IN_OPERATOR as 'IN'" do
      expect(TransactionType::IN_OPERATOR).to eq('IN')
    end
  end
end
