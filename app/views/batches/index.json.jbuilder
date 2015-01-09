json.array!(@batches) do |batch|
  json.extract! batch, :id, :data, :data_entrega, :volume, :formula_id, :mp_id
  json.url batch_url(batch, format: :json)
end
