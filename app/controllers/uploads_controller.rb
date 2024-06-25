class UploadsController < ApplicationController
  def upload; end

  def perform_upload
    Upload::PerformUpload.new(params[:file]).execute

    redirect_to '/companies'
  end
end
