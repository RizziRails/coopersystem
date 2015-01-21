json.array!(@saidafisicas) do |saidafisica|
  json.extract! saidafisica, :id, :mp_id, :batch_id, :exped, :qtde, :lote, :validade, :obs
  json.url saidafisica_url(saidafisica, format: :json)
end
