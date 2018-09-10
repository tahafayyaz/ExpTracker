json.extract! rec_expense, :id, :name, :frequency, :expense_id, :created_at, :updated_at
json.url rec_expense_url(rec_expense, format: :json)
