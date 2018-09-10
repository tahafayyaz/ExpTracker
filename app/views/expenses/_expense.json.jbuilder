json.extract! expense, :id, :exp_type, :amount, :month, :paid, :invoice_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
