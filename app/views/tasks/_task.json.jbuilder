json.extract! task, :id, :name, :billable, :start_time, :end_time, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
