json.array!(@logins) do |login|
  json.extract! login, :id, :name, :description, :picture
  json.url login_url(login, format: :json)
end
