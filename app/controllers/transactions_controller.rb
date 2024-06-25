class TransactionController < ApplicationController
  def index_by_company
    @list = Transaction.where(company_id: params[:company_id])
  end
end
