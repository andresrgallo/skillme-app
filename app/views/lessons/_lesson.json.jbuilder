json.extract! lesson, :id, :category_id, :description, :content, :price, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
