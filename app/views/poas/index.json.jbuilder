json.array!(@poas) do |poa|
  json.extract! poa, :id, :name, :description
  json.url poa_url(poa, format: :json)
end
