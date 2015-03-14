json.array!(@securities) do |security|
  json.extract! security, :id, :name, :bookprice, :marketprice, :sigma
  json.url security_url(security, format: :json)
end
