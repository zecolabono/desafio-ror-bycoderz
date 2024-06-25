class Transactions::IndexByCompany
  attr_accessor :company_id

  def initialize(_company_id)
    @company_id = company
  end

  def execute; end
end
