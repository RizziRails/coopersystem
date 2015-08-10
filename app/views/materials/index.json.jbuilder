json.array!(@materials) do |material|
  json.extract! material, :id, :tipo, :obs
  json.url material_url(material, format: :json)
end
