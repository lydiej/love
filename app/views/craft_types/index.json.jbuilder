json.array!(@craft_types) do |craft_type|
  json.extract! craft_type, :id, :type, :description
  json.url craft_type_url(craft_type, format: :json)
end
