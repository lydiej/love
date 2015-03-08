json.array!(@crafts) do |craft|
  json.extract! craft, :id, :name, :description, :auther, :image
  json.url craft_url(craft, format: :json)
end
