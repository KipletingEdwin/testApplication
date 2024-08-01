json.extract! post, :id, :title, :desription, :created_at, :updated_at
json.url post_url(post, format: :json)
