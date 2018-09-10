json.extract! employee, :id, :name, :salary, :project_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
