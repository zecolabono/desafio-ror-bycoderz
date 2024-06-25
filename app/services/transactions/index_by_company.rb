class Transactions::IndexByCompany
  attr_accessor :company_id

  def initialize(company_id)
    @company_id = company_id
  end

  def execute
    Transaction.where(company_id:)
  end
end
