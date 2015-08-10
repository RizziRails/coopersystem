json.array!(@formulas) do |formula|
  json.extract! formula, :id, :nome, :obs
  json.url formula_url(formula, format: :json)
end
