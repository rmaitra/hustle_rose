json.array!(@contact_posts) do |contact_post|
  json.extract! contact_post, :id, :title, :description
  json.url contact_post_url(contact_post, format: :json)
end
