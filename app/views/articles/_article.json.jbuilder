json.extract! article, :id, :title, :author_id, :article_text, :image_url, :likes, :dislikes, :created_at, :updated_at
json.url article_url(article, format: :json)
