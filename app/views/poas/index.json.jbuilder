json.array!(@poas) do |poa|
  json.extract! poa, :id, :name, :description
end
