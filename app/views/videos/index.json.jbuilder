json.array!(@videos) do |video|
  json.extract! video, :id, :title, :link, :description
  json.url video_url(video, format: :json)
end
