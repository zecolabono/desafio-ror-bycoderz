class Transactions::Create
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def execute
    Transaction.create(params)
  end
end
