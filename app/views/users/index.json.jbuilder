json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone, :address
  json.url user_url(user, format: :json)
end
