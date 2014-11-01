json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :due_date, :priority
  json.url task_url(task, format: :json)
end
