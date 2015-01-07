json.array!(@lista_prods) do |lista_prod|
  json.extract! lista_prod, :id, :formula_id, :mp_id, :qtde
  json.url lista_prod_url(lista_prod, format: :json)
end
