class CompaniesController < ApplicationController
  def index
    @companies = Company.all

    return if request.format.html?

    render json: @companies, status: :ok
  end
end
