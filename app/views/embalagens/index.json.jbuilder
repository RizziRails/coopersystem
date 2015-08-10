json.array!(@embalagens) do |embalagem|
  json.extract! embalagem, :id, :volume, :caracteristicas, :tipo, :material_id, :unidade_id
  json.url embalagem_url(embalagem, format: :json)
end
