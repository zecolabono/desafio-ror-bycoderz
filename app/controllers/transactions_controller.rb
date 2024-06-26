class TransactionsController < ApplicationController
  def index_by_company
    @transactions = Transactions::IndexByCompany.new(params[:company_id]).execute

    if request.format.html?
      @company = Company.find(params[:company_id])
    else
      render json: @transactions, status: :ok
    end
  end
end
