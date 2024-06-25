class Companies::Create
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def execute
    Company.find_or_create_by(params)
  end
end
