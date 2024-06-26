class Upload::PerformUpload
  attr_accessor :file

  def initialize(file)
    @file = file
  end

  def execute
    lines = File.readlines(file)

    lines.map do |line|
      company = Companies::Create.new(format_company(line)).execute
      Transactions::Create.new(format_transaction(line, company.id)).execute
    end
  end

  def format_company(line)
    {
      name: line[62..80].strip,
      owner_name: line[48..61].strip
    }
  end

  def format_transaction(line, company_id)
    {
      transaction_type_id: line[0],
      company_id:,
      amount: format('%.2f', line[9..18].to_f / 100),
      beneficiary_document: line[19..29],
      card_number: line[30..41],
      created_at: line[1..8] + line[42..47]
    }
  end
end
