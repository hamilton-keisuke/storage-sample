json.extract! article, :id, :title, :content, :lock_version, :created_at, :updated_at
json.url article_url(article, format: :json)
