json.array!(@home_posts) do |home_post|
  json.extract! home_post, :id, :title, :description
  json.url home_post_url(home_post, format: :json)
end
