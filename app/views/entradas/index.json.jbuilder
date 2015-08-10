json.array!(@entradas) do |entrada|
  json.extract! entrada, :id, :mp_id, :receb, :qtde, :nf, :lote, :validade, :obs
  json.url entrada_url(entrada, format: :json)
end
