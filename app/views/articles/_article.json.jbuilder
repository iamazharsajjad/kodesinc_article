json.extract! article, :id, :title, :body, :featured_by_id, :featured_till, :created_at, :updated_at
json.url article_url(article, format: :json)
