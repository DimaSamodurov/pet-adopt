json.array!(@news) do |news|
  json.extract! news, :id, :text, :created_at
  json.url news_url(news, format: :json)
end
