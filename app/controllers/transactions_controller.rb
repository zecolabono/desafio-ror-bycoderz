class TransactionsController < ApplicationController
  def index_by_company
    @transactions = Transactions::IndexByCompany.new(params[:company_id]).execute

    @company = Company.find(params[:company_id])
  end
end
