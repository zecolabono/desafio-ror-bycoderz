require 'rails_helper'

RSpec.describe Upload::PerformUpload, type: :service do
  describe '#execute' do
    let(:file_path) { Rails.root.join('spec', 'fixtures', 'files', 'test_file.txt') }

    it 'processes the file and creates companies and transactions' do
      allow(File).to receive(:readlines)
        .with(file_path)
        .and_return([
                      '3201903010000014200096206760174753****3153153453JOÃO MACEDO   BAR DO JOÃO       '
                    ])

      expect(Companies::Create).to receive(:new).with({ name: 'BAR DO JOÃO',
                                                        owner_name: 'JOÃO MACEDO' }).and_call_original
      expect(Transactions::Create).to receive(:new).with(hash_including(company_id: anything)).and_call_original

      service = Upload::PerformUpload.new(file_path)
      service.execute
    end
  end
end
