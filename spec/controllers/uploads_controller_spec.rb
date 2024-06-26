require 'rails_helper'

RSpec.describe UploadsController, type: :controller do
  describe 'GET #upload' do
    before do
      get :upload
    end

    it 'returns a success response' do
      expect(response).to be_successful
    end

    it 'renders the upload template' do
      expect(response).to render_template('upload')
    end
  end

  describe 'POST #perform_upload' do
    let(:file) { fixture_file_upload('test_file.txt', 'text/plain') }

    before do
      expect_any_instance_of(Upload::PerformUpload).to receive(:execute)
      post :perform_upload, params: { file: }
    end

    it "redirects to '/companies'" do
      expect(response).to redirect_to('/companies')
    end
  end
end
