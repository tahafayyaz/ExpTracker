json.extract! invoice, :id, :description, :start_date, :end_date, :paid, :project_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
