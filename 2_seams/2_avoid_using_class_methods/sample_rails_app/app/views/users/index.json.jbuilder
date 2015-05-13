json.array!(@users) do |user|
  json.extract! user, :id, :email, :encrypted_password
  json.url user_url(user, format: :json)
end
