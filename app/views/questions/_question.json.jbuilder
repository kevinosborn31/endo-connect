json.extract! question, :id, :user_id, :qustion_text, :created_at, :updated_at
json.url question_url(question, format: :json)
