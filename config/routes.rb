# frozen_string_literal: true

Rails.application.routes.draw do
  root 'uploads#upload'

  # Companies
  get 'companies', to: 'companies#index'

  # Uploads
  get 'upload', to: 'uploads#upload'
  post 'perform_upload', to: 'uploads#perform_upload'

  # Transactions
  get 'transactions/:company_id', to: 'transactions#index_by_company'
end
