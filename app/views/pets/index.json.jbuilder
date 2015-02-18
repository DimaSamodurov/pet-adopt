json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :description, :state
  json.url pet_url(pet, format: :json)
end
