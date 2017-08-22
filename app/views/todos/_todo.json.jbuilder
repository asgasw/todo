json.extract! todo, :id, :content, :completed, :project_id, :created_at, :updated_at
json.url todo_url(todo, format: :json)
