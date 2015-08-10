json.array!(@lista_embalagens) do |lista_embalagem|
  json.extract! lista_embalagem, :id, :batch_id, :qtde, :embalagem_id
  json.url lista_embalagem_url(lista_embalagem, format: :json)
end
