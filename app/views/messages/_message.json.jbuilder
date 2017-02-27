json.extract! message, :id, :user_id, :name, :description, :image, :created_at, :updated_at
json.url message_url(message, format: :json)