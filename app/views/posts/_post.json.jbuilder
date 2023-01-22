json.extract! post, :id, :pic, :quote, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)