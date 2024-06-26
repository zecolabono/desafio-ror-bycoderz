require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
  attr_accessor :company

  before(:all) do
    @company = FactoryBot.create(:company)
  end

  describe 'GET #index' do
    context 'when request format is HTML' do
      before do
        get :index
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @companies' do
        expect(assigns(:companies)).to eq([company])
      end

      it 'renders the index template' do
        expect(response).to render_template('index')
      end
    end

    context 'when request format is JSON' do
      before do
        get :index, format: :json
        @json_response = JSON.parse(response.body)
      end

      it 'returns JSON with companies' do
        expect(response).to have_http_status(:ok)
        expect(@json_response.length).to eq(1)
        expect(@json_response[0]['name']).to eq(company.name)
      end
    end
  end
end
