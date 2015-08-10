json.array!(@unidades) do |unidade|
  json.extract! unidade, :id, :nome, :sigla
  json.url unidade_url(unidade, format: :json)
end
