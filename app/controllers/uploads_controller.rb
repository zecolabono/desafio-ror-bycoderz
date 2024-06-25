class UploadsController < ApplicationController
  def upload; end

  def perform_upload
    Upload::PerformUpload.new(params[:file]).execute

    flash[:notice] = 'Arquivo enviado com sucesso!'

    redirect_to action: 'companies#index'
  rescue StandardError
    flash[:alert] = 'Erro no envio do arquivo.'
  end
end
