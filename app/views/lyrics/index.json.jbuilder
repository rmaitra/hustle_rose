json.array!(@lyrics) do |lyric|
  json.extract! lyric, :id, :title, :description
  json.url lyric_url(lyric, format: :json)
end
