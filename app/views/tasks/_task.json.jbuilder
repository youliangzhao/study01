json.extract! task, :id, :taskcode, :taskname, :taskdesc, :temp_id, :created_at, :updated_at
json.url task_url(task, format: :json)
