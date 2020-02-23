json.extract! answer, :id, :question_id, :user_id, :answer_text, :created_at, :updated_at
json.url answer_url(answer, format: :json)
