json.extract! project, :id, :name, :inv_freq, :hourly_rate, :manager_id, :invoice_id, :created_at, :updated_at
json.url project_url(project, format: :json)
