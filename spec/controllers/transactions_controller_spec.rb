require 'rails_helper'

RSpec.describe TransactionsController, type: :controller do
  attr_accessor :company, :transactions

  before(:all) do
    @company = FactoryBot.create(:company)
    @transactions = FactoryBot.create_list(:transaction, 3, :in, company:)
  end

  describe 'GET #index_by_company' do
    context 'when request format is HTML' do
      before do
        get :index_by_company, params: { company_id: company.id }
      end
      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @company' do
        expect(assigns(:company)).to eq(company)
      end

      it 'renders the index_by_company template' do
        expect(response).to render_template('index_by_company')
      end
    end

    context 'when request format is JSON' do
      before do
        get :index_by_company, params: { company_id: company.id }, format: :json
        @json_response = JSON.parse(response.body)
      end

      it 'returns JSON with transactions' do
        expect(response).to have_http_status(:ok)
        expect(@json_response.length).to eq(3)
        expect(@json_response.map { |t| t['id'] }).to match_array(transactions.map(&:id))
      end
    end
  end
end
