json.array!(@embalagens) do |embalagem|
  json.extract! embalagem, :id, :volume, :caracteristicas, :tipo_id, :material_id, :unidade_id
  json.url embalagem_url(embalagem, format: :json)
end
