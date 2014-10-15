json.array!(@posts) do |post|
  json.extract! post, :id, :subject, :string, :body, :published_at, :time, :draft_status
  json.url post_url(post, format: :json)
end
