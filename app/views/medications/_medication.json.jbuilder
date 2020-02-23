json.extract! medication, :id, :name, :dosage, :instructions, :created_at, :updated_at
json.url medication_url(medication, format: :json)
