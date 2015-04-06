json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :annotation, :genre
  json.url book_url(book, format: :json)
end
