json.array!(@saidas) do |saida|
  json.extract! saida, :id, :mp_id, :exped, :qtde, :nf, :lote, :validade, :obs
  json.url saida_url(saida, format: :json)
end
