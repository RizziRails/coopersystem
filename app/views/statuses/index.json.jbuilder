json.array!(@statuses) do |status|
  json.extract! status, :id, :tipo, :obs
  json.url status_url(status, format: :json)
end
