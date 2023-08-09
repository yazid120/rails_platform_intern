json.extract! student, :id, :name, :last_name, :created_at, :updated_at
json.url student_url(student, format: :json)
