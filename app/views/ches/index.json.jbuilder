json.array!(@ches) do |ch|
  json.extract! ch, :id, :content
  json.url ch_url(ch, format: :json)
end
